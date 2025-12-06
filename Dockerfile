FROM ubuntu:24.04

# Install bash
RUN apt-get update && apt-get install -y bash

# Copy script into container
COPY app.sh /app.sh

# Run script when container starts
CMD ["/bin/bash", "/app.sh"]
