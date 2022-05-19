FROM ubuntu:21.04
# Use Ubuntu 21.04 because it better fits cmake gcc g++ prerequisites

# Environment variables
ENV INSTALL_ROOT=/potree
ENV LASTOOLS_ROOT=${INSTALL_ROOT}/LAStools
ENV POTREE_CONVERTER_ROOT=${INSTALL_ROOT}/PotreeConverter
ENV POTREE_ROOT=${INSTALL_ROOT}/Potree

RUN mkdir -p ${INSTALL_ROOT} \
         && mkdir -p ${LASTOOLS_ROOT} \
         && mkdir -p ${POTREE_CONVERTER_ROOT} \
         && mkdir -p ${POTREE_ROOT}

# An npm issue workaround on Ubuntu 18.04 - 21.04
# Avoid tzdata error https://stackoverflow.com/questions/67452096/docker-build-hangs-based-on-order-of-install
ARG DEBIAN_FRONTEND=noninteractive
RUN set -ex && \
    apt-get update && \
    apt-get install -y \
    git \
    cmake \
    npm \
    nodejs

RUN apt-get install -y \
    build-essential \
    ca-certificates \
    libtbb-dev \
    libplib-dev

WORKDIR ${INSTALL_ROOT}
# Build LAStools (for needed LAZ capability)
RUN git clone https://github.com/m-schuetz/LAStools.git \
    && mkdir -p ${LASTOOLS_ROOT}/LASzip/build && cd ${LASTOOLS_ROOT}/LASzip/build \
    && cmake -DCMAKE_BUILD_TYPE=Release .. \
    && make

WORKDIR ${INSTALL_ROOT}
RUN git clone -b master https://github.com/potree/PotreeConverter.git \
    && mkdir -p ${POTREE_CONVERTER_ROOT}/build && cd ${POTREE_CONVERTER_ROOT}/build \
    && cmake -DCMAKE_BUILD_TYPE=Release -DLASZIP_INCLUDE_DIRS=${LASTOOLS_ROOT}/LASzip/dll -DLASZIP_LIBRARY=${LASTOOLS_ROOT}/LASzip/build/src/liblaszip.so .. \
    && make

WORKDIR ${INSTALL_ROOT}
# Build Potree from branch develop
RUN git clone -b develop https://github.com/potree/Potree.git \
         && cd ${POTREE_ROOT} \
         && npm install && npm install -g gulp \
         && cp gulpfile.js gulpfile.js.0 \
         && sed 's/port: 1234,/&\nhost: "0.0.0.0",/' gulpfile.js.0 > gulpfile.js \
         && cp gulpfile.js gulpfile.js.0 \
         && sed 's/port: 1234,/port: 443,/' gulpfile.js.0 > gulpfile.js \
         && cp gulpfile.js gulpfile.js.0 \
         && sed 's/https: false,/https: true,/' gulpfile.js.0 > gulpfile.js

EXPOSE 443

WORKDIR ${POTREE_ROOT}
RUN mkdir -p data
COPY data/custom.html data/
CMD ["gulp","watch"]

