ARG BASE_IMAGE=aiharbor.local/base/centos:7
FROM $BASE_IMAGE as runtime

LABEL maintainer "guodong"

ENV NVARCH x86_64

ENV NVIDIA_REQUIRE_CUDA "cuda>=11.0 driver>=450"
# ENV NVIDIA_REQUIRE_CUDA "cuda>=12.2 brand=tesla,driver>=450,driver<451 brand=tesla,driver>=470,driver<471 brand=unknown,driver>=470,driver<471 brand=nvidia,driver>=470,driver<471 brand=nvidiartx,driver>=470,driver<471 brand=geforce,driver>=470,driver<471 brand=geforcertx,driver>=470,driver<471 brand=quadro,driver>=470,driver<471 brand=quadrortx,driver>=470,driver<471 brand=titan,driver>=470,driver<471 brand=titanrtx,driver>=470,driver<471 brand=tesla,driver>=525,driver<526 brand=unknown,driver>=525,driver<526 brand=nvidia,driver>=525,driver<526 brand=nvidiartx,driver>=525,driver<526 brand=geforce,driver>=525,driver<526 brand=geforcertx,driver>=525,driver<526 brand=quadro,driver>=525,driver<526 brand=quadrortx,driver>=525,driver<526 brand=titan,driver>=525,driver<526 brand=titanrtx,driver>=525,driver<526"
ENV NV_CUDA_CUDART_VERSION 12.1.105-1


ENV CUDA_VERSION 12.1.1

COPY D42D0685.pub /etc/pki/rpm-gpg/RPM-GPG-KEY-NVIDIA
RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-NVIDIA

# For libraries in the cuda-compat-* package: https://docs.nvidia.com/cuda/eula/index.html#attachment-a
RUN yum update -y && yum install -y \
    cuda-cudart-12-1-${NV_CUDA_CUDART_VERSION} \
    cuda-compat-12-1 \
    cuda-toolkit-12-config-common-$NV_CUDA_CUDART_VERSION \
    cuda-toolkit-config-common-$NV_CUDA_CUDART_VERSION \
    cuda-cupti-12-1 \
    && yum clean all \
    && rm -rf /var/cache/yum/*

# nvidia-docker 1.0
RUN echo "/usr/local/nvidia/lib" >> /etc/ld.so.conf.d/nvidia.conf && \
    echo "/usr/local/nvidia/lib64" >> /etc/ld.so.conf.d/nvidia.conf

ENV PATH=/usr/local/nvidia/bin:/usr/local/cuda/bin:${PATH} \
    LD_LIBRARY_PATH=/usr/local/nvidia/lib:/usr/local/nvidia/lib64


# nvidia-container-runtime
ENV NVIDIA_VISIBLE_DEVICES=all \
    NVIDIA_DRIVER_CAPABILITIES=compute,utility

# RUN ldconfig 2>&1 |awk  '{print $3}' |xargs -r rm
# RUN ldconfig 2>&1 |awk  '{print $3}' |xargs -r rm

ENV NCCL_VERSION=2.17.1 \
    NV_CUDA_LIB_VERSION=12.1.1-1 \
    NV_NVTX_VERSION=12.1.105-1 \
    NV_LIBNPP_VERSION=12.1.0.40-1 \
    NV_LIBCUBLAS_VERSION=12.1.3.1-1

RUN yum install -y \
    cuda-libraries-12-1-${NV_CUDA_LIB_VERSION} \
    cuda-nvtx-12-1-${NV_NVTX_VERSION} \
    libnpp-12-1-${NV_LIBNPP_VERSION} \
    libcublas-12-1-${NV_LIBCUBLAS_VERSION} \
    libnccl-${NCCL_VERSION}-1+cuda12.1 \
    && yum clean all \
    && rm -rf /var/cache/yum/*

ENV NV_CUDNN_VERSION 8.9.0.131-1
LABEL com.nvidia.cudnn.version="${NV_CUDNN_VERSION}"

RUN yum install -y \
    libcudnn8-${NV_CUDNN_VERSION}.cuda12.1 \
    && yum clean all \
    && rm -rf /var/cache/yum/*

FROM runtime as devel

ENV NV_CUDA_LIB_VERSION=12.1.1-1 \
    NV_NVPROF_VERSION=12.1.105-1 \
    NV_CUDA_CUDART_DEV_VERSION=12.1.105-1 \
    NV_NVML_DEV_VERSION=12.1.105-1 \
    NV_LIBCUBLAS_DEV_VERSION=12.1.3.1-1 \
    NV_LIBNPP_DEV_VERSION=12.1.0.40-1 \
    NV_LIBNCCL_DEV_PACKAGE_VERSION=${NCCL_VERSION}-1 \
    NV_CUDA_NSIGHT_COMPUTE_VERSION=12.1.1-1

RUN yum install -y \
    make \
    cuda-command-line-tools-12-1-${NV_CUDA_LIB_VERSION} \
    cuda-libraries-devel-12-1-${NV_CUDA_LIB_VERSION} \
    cuda-minimal-build-12-1-${NV_CUDA_LIB_VERSION} \
    cuda-cudart-devel-12-1-${NV_CUDA_CUDART_DEV_VERSION} \
    cuda-nvprof-12-1-${NV_NVPROF_VERSION} \
    cuda-nvml-devel-12-1-${NV_NVML_DEV_VERSION} \
    libcublas-devel-12-1-${NV_LIBCUBLAS_DEV_VERSION} \
    libnpp-devel-12-1-${NV_LIBNPP_DEV_VERSION} \
    libnccl-devel-${NV_LIBNCCL_DEV_PACKAGE_VERSION}+cuda12.1 \
    cuda-nsight-compute-12-1-${NV_CUDA_NSIGHT_COMPUTE_VERSION} \
    && yum clean all \
    && rm -rf /var/cache/yum/*


ENV LIBRARY_PATH /usr/local/cuda/lib64/stubs
ENV LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/cuda/extras/CUPTI/lib64


RUN yum install -y \
    libcudnn8-devel-${NV_CUDNN_VERSION}.cuda12.1 \
    && yum clean all \
    && rm -rf /var/cache/yum/*

