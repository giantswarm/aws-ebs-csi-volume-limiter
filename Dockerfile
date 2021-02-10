FROM alpine:3.13.1
WORKDIR /app
COPY aws-ebs-csi-volume-limiter /app
CMD ["/app/aws-ebs-csi-volume-limiter"]
