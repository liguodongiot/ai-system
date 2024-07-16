#!/bin/bash

# cd $(dirname $0);pwd

IMAGE_NAME=aiharbor.local/base/cuda
CUDA_VERSION=12.1
CUDNN_VERSION=8

RUNTIME_IMAGE=$IMAGE_NAME:$CUDA_VERSION-cudnn${CUDNN_VERSION}-runtime-centos7
DEVEL_IMAGE=$IMAGE_NAME:$CUDA_VERSION-cudnn${CUDNN_VERSION}-devel-centos7

sudo docker build -t $RUNTIME_IMAGE --target runtime -f Dockerfile .
if [[ $? -ne 0 ]];then
    echo "$RUNTIME_IMAGE building error, Please check."
    exit 1
fi
sudo docker build -t $DEVEL_IMAGE -f Dockerfile .
if [[ $? -ne 0 ]];then
    echo "$DEVEL_IMAGE building error, Please check."
    exit 1
fi

sudo docker push $RUNTIME_IMAGE
sudo docker push $DEVEL_IMAGE

echo -e "$DEVEL_IMAGE" >> pushed.list
echo -e "$RUNTIME_IMAGE" >> pushed.list
