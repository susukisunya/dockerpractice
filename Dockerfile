FROM ubuntu:22.04
USER root

RUN apt update
RUN apt install -y python3

COPY input.txt .
COPY output.txt .
COPY main.py .
# (Dockerfileの他の部分は省略)

CMD sh -c " \
    # 1. 実行結果を 'result.txt' に保存する。
    #    この時点では、標準エラー (stderr) は RE 判定のためにそのまま出す。
    python3 main.py < input.txt > result.txt; \
    \
    # 2. 直前のpythonコマンドの終了ステータスを $? で取得し、変数に保存する。
    EXIT_CODE=$?; \
    \
    # 3. 終了ステータスをチェック (0 以外なら RE)
    if [ $EXIT_CODE -ne 0 ]; then \
      echo 'RE'; \
    else \
      # 4. 実行時エラーがなかったので、保存した 'result.txt' と正解 'expected_output.txt' を比較
      #    diff -q の出力自体は不要なので /dev/null に捨てる
      if diff -q result.txt expected_output.txt > /dev/null 2>&1; then \
        echo 'AC'; \
      else \
        echo 'WA'; \
      fi \
    fi \
  "
