package main

import (
	"context"
	"encoding/json"
	"log"
	"os"

	"github.com/aws/aws-sdk-go-v2/config"
	"github.com/aws/aws-sdk-go-v2/feature/ec2/imds"

	v1 "k8s.io/apimachinery/pkg/apis/meta/v1"
	"k8s.io/apimachinery/pkg/types"
	"k8s.io/client-go/kubernetes"
	"k8s.io/client-go/rest"
)

var ebsLimit = map[string]string{
	"m4.xlarge": "14",
	"default":   "39",
}

type patchStringValue struct {
	Op    string `json:"op"`
	Path  string `json:"path"`
	Value string `json:"value"`
}

func main() {
	cfg, err := config.LoadDefaultConfig(context.TODO())
	if err != nil {
		log.Printf("Unable to load AWS config: %v\n", err)
		os.Exit(1)
	}

	client := imds.NewFromConfig(cfg)

	identity, err := client.GetInstanceIdentityDocument(context.TODO(), nil)
	if err != nil {
		log.Printf("Unable to retrieve the instance type from the EC2 instance: %v\n", err)
		os.Exit(1)
	}

	limit, ok := ebsLimit[identity.InstanceType]
	if !ok {
		log.Printf("Unable to find instance type in map, setting default allocatable volumes %s\n", ebsLimit["default"])
		limit = ebsLimit["default"]
	}

	log.Printf("Setting EBS limit %s", limit)
	err = updatePodStatus(limit)
	if err != nil {
		log.Printf("Unable to create ebs-limit configmap: %v\n", err)
		os.Exit(1)
	}
}

func updatePodStatus(limit string) error {
	config, err := rest.InClusterConfig()
	if err != nil {
		return err
	}
	clientset, err := kubernetes.NewForConfig(config)
	if err != nil {
		return err
	}

	payload := []patchStringValue{{
		Op:    "replace",
		Path:  "/metadata/labels/giantswarm.io~1aws-ebs-limit",
		Value: limit,
	}}
	payloadBytes, err := json.Marshal(payload)
	if err != nil {
		return err
	}

	pod, err := clientset.CoreV1().Pods(os.Getenv("POD_NAMESPACE")).Get(context.TODO(), os.Getenv("POD_NAME"), v1.GetOptions{})
	if err != nil {
		return err
	}

	_, err = clientset.CoreV1().Pods(pod.GetNamespace()).Patch(context.TODO(), pod.GetName(), types.JSONPatchType, payloadBytes, v1.PatchOptions{})
	if err != nil {
		return err
	}

	return nil
}
