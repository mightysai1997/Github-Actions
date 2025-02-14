# Use a small base image (Alpine Linux)
FROM alpine:latest

# Set the maintainer label
LABEL maintainer="yourname@example.com"

# Create a simple hello-world script
RUN echo -e '#!/bin/sh\n echo "Hello, World!"' > /hello.sh

# Make the script executable
RUN chmod +x /hello.sh

# Set the default command to run the script
CMD ["/hello.sh"]
