#!/bin/bash

DOMAIN_NAME=aiharbor.local

function build_and_push_python_cpu() {
    local py_version=$1
    echo $py_version 
    local conda_tag=py$(echo $1|awk -F "." '{print $1$2}')_$2
    echo $conda_tag
    local tag=${py_version}-centos7
    sudo docker build \
        -t $DOMAIN_NAME/base/python:${tag} \
        --build-arg PY_VERSION=$py_version \
        --build-arg CONDA_VERSION=$conda_tag \
        -f base.Dockerfile .
    if [ $? -ne 0 ];then 
        echo "build error, exit"
        exit 1
    fi
    sudo docker push $DOMAIN_NAME/base/python:${tag}
    echo -e "$DOMAIN_NAME/base/python:${tag}" >> pushed.list
}

if [ $# -lt 1 ];then 
    echo "usage: ./base.sh \$py_version"
    echo "   eg: ./base.sh 3.10"
    exit 1
fi
conda_version=23.1.0-1

# sh base.sh 3.10
# build_and_push_python_cpu 3.10 23.1.0-1
build_and_push_python_cpu $1 $conda_version
