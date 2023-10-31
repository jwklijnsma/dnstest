# Use an official Ubuntu as a parent image
FROM ubuntu:latest

# Install required packages
RUN apt-get update && apt-get install -y \
    dnsutils \
    dnsperf

# Copy the DNS performance testing configuration file
COPY dnsperf.janwiebe.eu .

# Run the DNS performance test when the container starts
CMD ["dnsperf", "-s", "janwiebe.eu", "-d", "dnsperf.janwiebe.eu"]
