module github.com/giantswarm/aws-ebs-csi-volume-limiter

go 1.16

require (
	github.com/aws/aws-sdk-go-v2/config v1.13.0
	github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.10.0
	k8s.io/apimachinery v0.20.15
	k8s.io/client-go v0.20.15
)

replace github.com/gogo/protobuf v1.3.1 => github.com/gogo/protobuf v1.3.2
