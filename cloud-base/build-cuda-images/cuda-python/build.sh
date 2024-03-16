
DOMAIN_NAME=aiharbor.local

function build_and_push_python_cuda() {
    local py_version=$1
    local cuda_version=$2
    local cudnn_version=$3
    local type=$4
    local common_tag=${cuda_version}-cudnn${cudnn_version}-${type}-centos7
    # eg: common_tag=11.1-cudnn8-runtime-centos7
    py_version_tag=py$(echo $py_version |awk -F '.' '{print $1$2}')
    sudo docker build \
        -t ${DOMAIN_NAME}/base/python:${py_version_tag}-${common_tag} \
        --build-arg PY_IMAGE=${DOMAIN_NAME}/base/python:${py_version}-centos7 \
        --build-arg BASE_IMAGE=${DOMAIN_NAME}/base/cuda:${common_tag} \
        -f python.Dockerfile .
    if [ $? -ne 0 ];then 
        echo "build error, exit"
        exit 1
    fi
    sudo docker push ${DOMAIN_NAME}/base/python:${py_version_tag}-${common_tag}
    echo -e "${DOMAIN_NAME}/base/python:${py_version_tag}-${common_tag}" >> pushed.list
}



# PY_VERSIONS=(3.8 3.9 3.10)
# CUDA_VERSIONS=(11.8 11.7)
# for PY_VERSION in ${PY_VERSIONS[@]}
# do
#     for CUDA_VERSION in ${CUDA_VERSIONS[@]}
#     do
#         build_and_push_python_cuda $PY_VERSION $CUDA_VERSION 8 runtime
#         build_and_push_python_cuda $PY_VERSION $CUDA_VERSION 8 devel
#     done
# done

PY_VERSION=3.10
CUDA_VERSION=12.1
# build_and_push_python_cuda $PY_VERSION $CUDA_VERSION 8 runtime
build_and_push_python_cuda $PY_VERSION $CUDA_VERSION 8 devel
