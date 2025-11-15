# Use Alpine Linux as base
FROM alpine:latest

# Install bash (یا هر چیزی که نیاز داری)
RUN apk add --no-cache bash

# Set workdir
WORKDIR /app

# Copy files (فعلاً فقط README)
COPY . .

# Default command
CMD ["echo", "Hello from DevOps Playground!"]
