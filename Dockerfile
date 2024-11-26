# Use a lightweight Ubuntu image with CUDA support
FROM nvidia/cuda:12.6.1-base-ubuntu20.04

WORKDIR /app

# Install necessary dependencies
RUN apt-get update && apt-get install -y wget tar && apt-get clean

# Download and extract T-Rex Miner 0.26.8
RUN wget https://github.com/trexminer/T-Rex/releases/download/0.26.8/t-rex-0.26.8-linux.tar.gz -O trex.tar.gz \
    && tar -xvf trex.tar.gz -C /app \
    && rm trex.tar.gz

# Ensure the binary is executable
RUN chmod +x /app/t-rex

# Default command (can be overridden at runtime)
CMD ["/app/t-rex"]
