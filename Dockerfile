FROM ubuntu:jammy

WORKDIR /root/
COPY . ./
RUN ./packages/common.sh
RUN ./packages/wine.sh
RUN ./packages/vs.sh