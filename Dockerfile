FROM alpine:latest

CMD echo "Hello, ${GREETING_NAME:-World}!"
