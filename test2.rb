require "twitter"

ENV['SSL_CERT_FILE'] = File.expand_path('C:\tools\cacert.pem')

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "C8MO23D1Yvn4rerE4IBapJIoJ"
  config.consumer_secret     = "2jh7fsh4d9d85iTyKNXTVBb0KpkWv8qJmWoMbVdHClgnBoK3Rh"
  config.access_token        = "736847305526018048-PWAZ9eKtoDAtr8Ki7rFBiNV7Vk9zVcn"
  config.access_token_secret = "Su4l7LxnMQ4S3mgCUYRa2UUxLtJI3uYHbpY7K7sdnkOBF"
end

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
