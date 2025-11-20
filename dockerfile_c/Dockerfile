#cバージョン
FROM ubuntu:22.04

USER root

RUN apt update
RUN apt install -y build-essential

COPY main.c .
COPY input.txt .
COPY output.txt .

RUN gcc -o app main.c

CMD sh -c " \
    STR1=`./app < input.txt` \
    \
    EXIT_CODE=$? \
    \
    if [ $EXIT_CODE -ne 0 ]; then \
      echo 'RE' \
    else \
      STR2=`cat output.txt`
      if [ $STR1 = $STR2]; then \
        echo 'AC' \
      else \
        echo 'WA' \
      fi \
    fi \
  "