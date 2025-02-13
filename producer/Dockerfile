# Using alpine as base image
FROM alpine:latest

# Installing netcat for socket communication
RUN apk add --no-cache netcat-openbsd

# Storing source files in app directory
WORKDIR /app

# Copying script into app directory
COPY producer.sh .

# Giving execution privileges
RUN chmod +x producer.sh

# Running the script
CMD ["./producer.sh"]
