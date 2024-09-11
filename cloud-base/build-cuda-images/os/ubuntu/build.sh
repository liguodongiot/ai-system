#!/bin/bash

cd $(dirname $0);pwd

IMAGE_URL=harbor.xxx.io/base/ubuntu:22.04

sudo docker build -t $IMAGE_URL -f Dockerfile .

sudo docker push $IMAGE_URL