#pythonバージョン
FROM ubuntu:22.04

USER root

RUN apt update
RUN apt install -y python3

RUN mkdir /volume

COPY input.txt ./volume
COPY output.txt ./volume
COPY main.py ./volume
COPY main.sh ./volume

CMD sh ./volume/main.sh