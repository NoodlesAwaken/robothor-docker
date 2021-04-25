ARG CUDA_VERSION

FROM nvidia/cuda:$CUDA_VERSION-devel-ubuntu18.04
ARG NVIDIA_VERSION

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y install python3-pip libxrender1 libsm6 xserver-xorg-core xorg python3-venv vim pciutils wget git kmod vim git

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY requirements.txt scripts/install_nvidia.sh scripts/download_thor_build.py /app/
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt && python3 download_thor_build.py
RUN NVIDIA_VERSION=$NVIDIA_VERSION /app/install_nvidia.sh
WORKDIR /app/robothor-docker

CMD ["/bin/bash"]
