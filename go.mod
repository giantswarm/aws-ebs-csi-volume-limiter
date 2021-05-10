module github.com/giantswarm/aws-ebs-csi-volume-limiter

go 1.16

require (
	github.com/aws/aws-sdk-go-v2/config v1.1.7
	github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.0.7
	k8s.io/apimachinery v0.18.9
	k8s.io/client-go v0.18.9
  k8s.io/apimachinery v0.18.18
	k8s.io/client-go v0.18.18
)

replace github.com/gogo/protobuf v1.3.1 => github.com/gogo/protobuf v1.3.2
