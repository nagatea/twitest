# nagatea/twitest

## ようこそ！
ここはrubyを用いてTwitterAPIを理解しようと奮闘しているプ初心者のnagateaが頑張ってる場所です。

他の人の参考になればと公開設定にしてあります。(あと進捗の監視用)


----
## 使うときは(ないと思うけど)
同じディレクトリにmysystem.rbを作成し、

    MY_CONSUMER_KEY        = "自分のconsumer_key"
    MY_CONSUMER_SECRET     = "自分のconsumer_secret"
    MY_ACCESS_TOKEN        = "自分のaccess_token"
    MY_ACCESS_TOKEN_SECRET = "自分のaccess_token_secret" 

を入れてください。

あと、SSL認証がうまくいかなかったので証明書(cacert.pem)を入れてコード実行時に呼び出しています。

----
## 開発環境
- ruby(2.3.1)p112

- twitter gem(6.0.0)

- bundler gem(1.13.7)