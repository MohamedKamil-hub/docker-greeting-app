FROM alpine:latest
CMD echo "Hello, World!"
docker build -t hello-app:basic .
