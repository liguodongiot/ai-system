cd $(dirname $0);pwd

IMAGE_URL=harbor.xxxx.io/base/centos:7

sudo docker build -t $IMAGE_URL -f Dockerfile .

sudo docker push $IMAGE_URL