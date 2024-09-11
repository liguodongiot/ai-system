FROM harbor.xxx.io/base/centos:7-origin

RUN rm -f /etc/yum.repos.d/*

COPY rpm-gpg /etc/pki/rpm-gpg
COPY yum.repos.d/xxx-base.repo /etc/yum.repos.d/xxx-base.repo

RUN rpm --import /etc/pki/rpm-gpg/INTEL_PUBLIC_KEY.PUB && \
    rpm --import /etc/pki/rpm-gpg/GPG-PUB-KEY-INTEL-SW-PRODUCTS.PUB && \
    rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-NVIDIA && \
    rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-SIG-SCLo && \
    localedef -i zh_CN -c -f UTF-8 zh_CN.UTF-8

ENV LANG=zh_CN.UTF-8