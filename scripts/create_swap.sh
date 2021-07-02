#!/bin/bash
set -e

sudo fallocate -l 2g /mnt/2GiB.swap
sudo chmod 600 /mnt/2GiB.swap
sudo mkswap /mnt/2GiB.swap
sudo swapon /mnt/2GiB.swap
echo '/mnt/2GiB.swap swap swap defaults 0 0' | sudo tee -a /etc/fstab
