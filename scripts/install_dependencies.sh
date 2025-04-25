#!/bin/bash
set -e
set -o pipefail

apt update -qq

apt-get install -y -qq lsb-release \
                       gnupg \
                       git \
                       wget \
                       build-essential \
                       cmake \
                       gcc \
                       make \
                       apt-utils \
                       zip \
                       unzip \
                       tzdata \
                       libtool \
                       automake \
                       m4 \
                       re2c \
                       curl \
                       supervisor \
                       libssl-dev \
                       zlib1g-dev \
                       libcurl4-gnutls-dev \
                       libprotobuf-dev \
                       python3 \
                       lcov \
                       doxygen \
                       graphviz \
                       rsync \
                       gcovr

ln -fs /usr/share/zoneinfo/$TZ /etc/localtime
dpkg-reconfigure -f noninteractive tzdata
apt-get clean
apt-get autoclean
apt-get autoremove