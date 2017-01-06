# nagatea/twitest

----
## なに作ったかリスト

- test1.rb

    - ただ「てすと」と投稿するだけのコード 

- test2.rb

   - 投稿時間を投稿するコード

- test3.rb

    - 指定したIDの過去200ツイートの投稿時間を取得し、グラフ化するコード
    - 参考→[Twitter Gem を使って、気になるあの人の生活リズムを覗き見たい...! ](http://lo-upe.hatenablog.com/entry/20150113/1421150990)

- test4.rb

    - 指定したIDにニコ騒ぎを送るコード

    - **10文字以上のIDに送ることができません**(140文字以上になってしまうため)

    - 参考→[FF外から失礼するゾ〜(謝罪)とは - ニコニコ大百科](http://dic.nicovideo.jp/a/ff%E5%A4%96%E3%81%8B%E3%82%89%E5%A4%B1%E7%A4%BC%E3%81%99%E3%82%8B%E3%82%BE%E3%80%9C(%E8%AC%9D%E7%BD%AA))

- test5.rb

   - 指定したIDをフォローするコード

   - ついでにフォローしたことをツイートします

- test6.rb

   - 指定したIDの最近のツイート200件を取得するコード

----
## 使うときは(ないと思うけど)
同じディレクトリにmysystem.rbを作成し、

    MY_CONSUMER_KEY        = "自分のconsumer_key"
    MY_CONSUMER_SECRET     = "自分のconsumer_secret"
    MY_ACCESS_TOKEN        = "自分のaccess_token"
    MY_ACCESS_TOKEN_SECRET = "自分のaccess_token_secret" 

を入れてください。

あと、SSL認証がうまくいかなかったので証明書を入れてあったりします使うときは任意の場所を指定してください(投げやり)
