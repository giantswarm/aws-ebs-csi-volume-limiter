module github.com/giantswarm/aws-ebs-csi-volume-limiter

go 1.24.0

toolchain go1.25.1

require (
	github.com/aws/aws-sdk-go-v2/config v1.25.6
	github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.14.5
	k8s.io/apimachinery v0.18.19
	k8s.io/client-go v0.18.19
)

require (
	github.com/aws/aws-sdk-go-v2 v1.23.1 // indirect
	github.com/aws/aws-sdk-go-v2/credentials v1.16.5 // indirect
	github.com/aws/aws-sdk-go-v2/internal/configsources v1.2.4 // indirect
	github.com/aws/aws-sdk-go-v2/internal/endpoints/v2 v2.5.4 // indirect
	github.com/aws/aws-sdk-go-v2/internal/ini v1.7.1 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/accept-encoding v1.10.1 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/presigned-url v1.10.4 // indirect
	github.com/aws/aws-sdk-go-v2/service/sso v1.17.4 // indirect
	github.com/aws/aws-sdk-go-v2/service/ssooidc v1.20.2 // indirect
	github.com/aws/aws-sdk-go-v2/service/sts v1.25.5 // indirect
	github.com/aws/smithy-go v1.17.0 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/protobuf v1.3.2 // indirect
	github.com/google/gofuzz v1.1.0 // indirect
	github.com/googleapis/gnostic v0.1.0 // indirect
	github.com/json-iterator/go v1.1.8 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.1 // indirect
	golang.org/x/crypto v0.42.0 // indirect
	golang.org/x/net v0.43.0 // indirect
	golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45 // indirect
	golang.org/x/sys v0.36.0 // indirect
	golang.org/x/term v0.35.0 // indirect
	golang.org/x/text v0.29.0 // indirect
	golang.org/x/time v0.0.0-20190308202827-9d24e82272b4 // indirect
	google.golang.org/appengine v1.5.0 // indirect
	gopkg.in/inf.v0 v0.9.1 // indirect
	gopkg.in/yaml.v2 v2.2.8 // indirect
	k8s.io/api v0.18.19 // indirect
	k8s.io/klog v1.0.0 // indirect
	k8s.io/utils v0.0.0-20200324210504-a9aa75ae1b89 // indirect
	sigs.k8s.io/structured-merge-diff/v3 v3.0.1 // indirect
	sigs.k8s.io/yaml v1.2.0 // indirect
)

replace (
	github.com/dgrijalva/jwt-go => github.com/golang-jwt/jwt v3.2.2+incompatible
	github.com/gogo/protobuf v1.3.1 => github.com/gogo/protobuf v1.3.2
	golang.org/x/net => golang.org/x/net v0.44.0
	golang.org/x/text => golang.org/x/text v0.14.0
)
