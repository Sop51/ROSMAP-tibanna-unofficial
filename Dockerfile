# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Install required dependencies
RUN apt-get update && apt-get install -y \
    bowtie2 \
    wget \
    git \
    samtools \
    parallel


# Copy your application code into the container
WORKDIR /usr/local/bin

COPY run_ROSMAP.sh .
RUN chmod +x run_ROSMAP.sh

RUN chmod -R 777 /var/lib/

# Set the entrypoint command
CMD ["run_ROSMAP"]
