#pythonバージョン
FROM ubuntu:22.04

USER root

RUN apt update
RUN apt install -y python3

COPY input.txt .
COPY output.txt .
COPY main.py .

CMD sh -c " \
    STR1=`python3 main.py < input.txt` \
    \
    EXIT_CODE=$? \
    \
    if [ $EXIT_CODE -ne 0 ]; then \
      echo 'RE' \
    else \
      if [ $STR1 = $STR2 ]; then \
        echo 'AC' \
      else \
        echo 'WA' \
      fi \
    fi \
  "