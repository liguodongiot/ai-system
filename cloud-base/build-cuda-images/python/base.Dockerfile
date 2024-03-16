ARG BASE_IMAGE=aiharbor.local/base/centos:7

FROM ${BASE_IMAGE} as builder

LABEL maintainer "guodong"

ARG PY_VERSION=3.8

ENV PY_VERSION=$PY_VERSION

# Install Miniconda: https://repo.continuum.io/miniconda/
ARG CONDA_VERSION
ENV CONDA_DIR=/usr/local/conda
ENV CONDA_VERSION=$CONDA_VERSION

COPY pip.conf /etc/pip.conf

# Miniconda3-py310_23.1.0-1-Linux-x86_64.sh  

RUN \
    curl http://10.99.2.25:81/tools/Miniconda3-${CONDA_VERSION}-Linux-$(uname -i).sh -o /tmp/miniconda.sh && \
    /bin/bash /tmp/miniconda.sh -b -p $CONDA_DIR && \
    rm /tmp/miniconda.sh 

COPY condarc $CONDA_DIR/condarc

RUN \
    # Update conda
    # $CONDA_DIR/bin/conda update -y -n base -c defaults conda && \
    # $CONDA_DIR/bin/conda update -y setuptools pip && \
    # Add conda forge - Append so that conda forge has lower priority than the main channel
    # $CONDA_DIR/bin/conda config --system --append channels conda-forge && \
    $CONDA_DIR/bin/conda config --system --set auto_update_conda false && \
    $CONDA_DIR/bin/conda config --system --set show_channel_urls true && \
    # Update selected packages - install python 
    # $CONDA_DIR/bin/conda install -y  pip python=$PY_VERSION && \
    # $CONDA_DIR/bin/conda install -y  numactl-libs-cos7-x86_64 numactl-devel-cos7-x86_64 -c conda-forge && \
    # Cleanup - Remove all here since conda is not in path as of now
    find ${CONDA_DIR}/ -follow -type f -name '*.a' -delete && \
    find ${CONDA_DIR}/ -follow -type f -name '*.js.map' -delete && \
    $CONDA_DIR/bin/conda clean -y --packages && \
    $CONDA_DIR/bin/conda clean -y -a -f 


FROM $BASE_IMAGE

# 必须
ARG PY_VERSION=3.8

ENV PYTHON_VERSION=$PY_VERSION \
    PY_VERSION=$PY_VERSION \
    CONDA_DIR=/usr/local/conda

COPY --from=builder $CONDA_DIR $CONDA_DIR
COPY --from=builder /etc/pip.conf /etc/pip.conf

ENV PATH=/usr/local/conda/bin:$PATH
