#cバージョン
FROM ubuntu:22.04

RUN apt update
RUN apt install -y build-essential
RUN apt install -y diffutils

COPY main.c .
COPY input.txt .
COPY output.txt .

RUN gcc -o app main.c

CMD sh -c " \
    ./app < input.txt > result.txt; \
    \
    EXIT_CODE=$?; \
    \
    if [ $EXIT_CODE -ne 0 ]; then \
      echo 'RE'; \
    else \
      if diff -q result.txt expected_output.txt > /dev/null 2>&1; then \
        echo 'AC'; \
      else \
        echo 'WA'; \
      fi \
    fi \
  "