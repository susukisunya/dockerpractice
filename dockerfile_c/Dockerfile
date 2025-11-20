#cバージョン
FROM ubuntu:22.04

USER root

RUN apt update
RUN apt install -y build-essential

RUN mkdir /volume

COPY main.c ./volume
COPY input.txt ./volume
COPY output.txt ./volume
COPY main.sh ./volume

RUN gcc -o app ./volume/main.c

CMD sh ./volume/main.sh