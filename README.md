# dockerpractice  
## このディレクトリについて  
### ディレクトリ構成  
.  
│  filetree.txt  
│  README.md  
│  
├─dockerfile_c  
│  ├─Dockerfile  
│  ├─input.txt  
│  ├─main.c  
│  └─output.txt  
│        
└─dockerfile_python  
_  ├─Dockerfile    
_  ├─input.txt    
_  ├─main.py    
_  └─output.txt  
### コマンド一覧  
以下のコマンドは、dockerfile_c もしくは、 dockerfile_py にいる状態で実行してください
1. Dockerfileからコンテナイメージを作成したいとき
    - docker build  -t コンテナイメージのタグ(testimage:1.0など) .
1. コンテナイメージからコンテナを作成したいとき
    - docker run --name コンテナの名前 コンテナイメージのタグ
1. コンテナを停止したいとき
    - docker stop コンテナの名前
1. コンテナを削除したいとき(削除したいコンテナが停止している状態で実行してください)
    - docker rm コンテナの名前
1. コンテナイメージを削除したいとき(削除したいコンテナイメージで作成したコンテナが存在しない状態で実行してください)
    - docker rmi コンテナイメージのタグ  
### 使い方  
1. dockerfile_c または dockerfile_py 直下に移動する  
1. input.txtとoutput.txtに文字を入力して保存する
1. コマンド一覧の1のコマンドを実行してコンテナイメージを作成する  
1. 2のコマンドを実行してコンテナを作成する
1. input.txtとoutput.txtに書いてある文字が同じであればAC、異なればWAと出力される
1. もし、input.txtに何も書かれていなければREと出力される
1. 作成したコンテナとコンテナイメージを削除したければ、コマンド一覧のコマンドを3,4,5の順番で実行する
## dockerってどう動いてるの?  
dockerとは、コンテナ型の仮想環境を作成したり、配布したり、実行したりできるプラットフォームのこと。  
コンピュータのosに対して、ゲストosがあるようにみせてコンテナのソフトウェアや、ミドルウェアを動かす。  
この記事に出ていた例がわかりやすかった。https://qiita.com/Sicut_study/items/4f301d000ecee98e78c9  
dockerをゲーム機だとすると、コンテナはゲームソフトにあたる。  ゲームソフトが同じ種類のどのゲーム機をつかっても同じように動作するように、  dockerのコンテナもどのコンピュータ上でも同じように動作する。  
## dockerを使うと何がいいの？  
どんなコンピュータでも、まったく同じ環境を作成することができる。  
しかも、作成方法も簡単!  
Dockerfileと呼ばれるファイルに書かれたコードからビルドするので、  
Dockerfileさえあればコマンドを打つだけでいい。  
ハッカソンとかでも使えそう  
dockerhubからdocker imageをpullすることで、もうすでに完成している環境を用意することもできる
