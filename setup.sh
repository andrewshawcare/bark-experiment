#!/usr/bin/env bash

sudo apt-get update
sudo apt install python3-pip

pip3 install --user pdm

# Install CUDA
os_distributor_id="$(lsb_release --id --short | tr '[:upper:]' '[:lower:]')"
os_release="$(lsb_release --release --short | tr --delete '.')"

OS="${os_distributor_id}${os_release}"

sudo apt-key del 7fa2af80
wget https://developer.download.nvidia.com/compute/cuda/repos/${OS}/x86_64/cuda-keyring_1.0-1_all.deb
sudo dpkg -i cuda-keyring_1.0-1_all.deb
rm cuda-keyring_1.0-1_all.deb

sudo apt install nvidia-cudnn