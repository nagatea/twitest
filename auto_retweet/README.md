# nagatea/twitest/auto_retweet

開発中...

## 最終目的
- TLに流れてきたツイートを片っ端からRT&ふぁぼする


## なに作ったかリスト

- get_tl\_rest.rb

    - home_timelineを取得するコード
    - 60秒ごとに更新するように設定しています(home_timelineの要求が15分に15回までのため)


- get_tl\_stream.rb

    - streamAPIを用いてTLを取得するコード
    - 参考→[RubyでTwitterにStreaming接続してbotを作ってるお話 - Wakotech Blog](http://yutaszk23.hatenadiary.jp/entry/2014/06/05/142337)

- get_tl.rb

    - restAPIとstreamAPIを組み合わせて古いTLと新しいTLを取得するコード
    - 見てる分にはなんかちゃんとしたクライアントっぽい

- fav.rb

    - 指定したIDの最新のツイート1件をふぁぼるコード

- rt.rb

    - 指定したIDの最新のツイート1件をRTするコード

