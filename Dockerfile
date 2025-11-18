# Use Alpine as the base image
FROM alpine:latest

# Install bash only (nginx removed)
RUN apk add --no-cache bash

# Create a directory for the application content
RUN mkdir -p /app/html

# Add a simple HTML file for testing
RUN echo '<!DOCTYPE html><html><body><h1>Hello from DevOps Playground!</h1></body></html>' > /app/html/index.html

# Set the default command to launch a shell
CMD ["sh"]
