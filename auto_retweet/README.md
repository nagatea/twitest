# nagatea/twitest/auto_retweet

開発中...

## 最終目的
- TLに流れてきたツイートを片っ端からリツイートする


## なに作ったかリスト

- get_tl.rb

    - home_timelineを取得するコード
    - 30秒ごとに更新するように設定しています


- get_tl\_stream.rb

    - streamAPIを用いてTLを取得するコード
    - 参考→[RubyでTwitterにStreaming接続してbotを作ってるお話 - Wakotech Blog](http://yutaszk23.hatenadiary.jp/entry/2014/06/05/142337)