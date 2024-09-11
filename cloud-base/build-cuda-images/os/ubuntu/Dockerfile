FROM ubuntu:22.04

RUN \
    apt-get update && apt-get install -y --no-install-recommends \
        gnupg2 curl ca-certificates aptitude && \
    curl -fsSLO https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.0-1_all.deb && \
    dpkg -i cuda-keyring_1.0-1_all.deb && \
    curl -o /tmp/GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB && \
    apt-key add /tmp/GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB && \
    rm -f /etc/apt/sources.list.d/* && \
    rm -rf /var/lib/apt/lists/*

COPY cuda-ubuntu2204-x86_64.list /etc/apt/sources.list.d/cuda-ubuntu2204-x86_64.list
COPY sources.list /etc/apt/sources.list
COPY intel.list /etc/apt/sources.list.d/intel.list
COPY pip.conf /etc/pip.conf