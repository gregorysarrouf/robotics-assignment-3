# Using alpine as base image
FROM alpine:latest

# Installing netcat for socket communication
RUN apk add --no-cache netcat-openbsd

# Navigating to app directory
WORKDIR /app

# Copying listener script to app directory
COPY consumer.sh .

# Giving execution privileges
RUN chmod +x consumer.sh

# Executing script
CMD ["./consumer.sh"]
