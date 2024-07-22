FROM alpine:3.20.2
WORKDIR /app
COPY aws-ebs-csi-volume-limiter /app
CMD ["/app/aws-ebs-csi-volume-limiter"]
