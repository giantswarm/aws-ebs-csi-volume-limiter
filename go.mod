module github.com/giantswarm/aws-ebs-csi-volume-limiter

go 1.16

require (
	github.com/aws/aws-sdk-go-v2/config v1.6.1
	github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.4.1
	k8s.io/apimachinery v0.18.19
	k8s.io/client-go v0.18.19
)

replace github.com/gogo/protobuf v1.3.1 => github.com/gogo/protobuf v1.3.2
