require "twitter"
require "./mysystem.rb"

ENV['SSL_CERT_FILE'] = File.expand_path('C:\tools\cacert.pem')

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = MY_CONSUMER_KEY
  config.consumer_secret     = MY_CONSUMER_SECRET
  config.access_token        = MY_ACCESS_TOKEN
  config.access_token_secret = MY_ACCESS_TOKEN_SECRET
end
puts("読み込み完了")

time = Time.now
y = time.year
mon = time.month
d = time.day
weeks = ["日", "月", "火", "水", "木", "金", "土"]
w = time.wday
h = time.hour
min = time.min
s = time.sec

client.update("投稿時間は#{y}年#{mon}月#{d}日の#{weeks[w]}曜日、#{h}時#{min}分#{s}秒です。")
puts("投稿しました！")
