# nagatea/twitest/test

ここはいろいろテストしてる場所です

明確な目的はありません


## なに作ったかリスト

- test1.rb

    - ただ「てすと」と投稿するだけのコード 

- test2.rb

    - 投稿時間を投稿するコード

- test3.rb

    - 指定したIDの過去200ツイートの投稿時間を取得し、グラフ化するコード
    - 参考→[Twitter Gem を使って、気になるあの人の生活リズムを覗き見たい...! ](http://lo-upe.hatenablog.com/entry/20150113/1421150990)
    - `$ruby test3.rb [user_id]`で実行できます

- test4.rb

    - 指定したIDにニコ騒ぎを送るコード
    - **10文字以上のIDに送ることができません**(140文字以上になってしまうため)
    - 参考→[FF外から失礼するゾ〜(謝罪)とは - ニコニコ大百科](http://dic.nicovideo.jp/a/ff%E5%A4%96%E3%81%8B%E3%82%89%E5%A4%B1%E7%A4%BC%E3%81%99%E3%82%8B%E3%82%BE%E3%80%9C(%E8%AC%9D%E7%BD%AA))
    - `$ruby test4.rb [user_id]`で実行できます

- test5.rb

    - 指定したIDをフォローorリムーブするコード
    - ついでにフォローorリムーブしたことをツイートします
    - `$ruby test5.rb [user_id] [follow or unfollow]`で実行できます

- test6.rb

    - 指定したIDの最近のツイート取得するコード
    - 取得するツイートの回数を指定することができます
    - `$ruby test6.rb [user_id] [回数(200まで)]`で実行できます