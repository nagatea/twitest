require "twitter"
require "./mysystem.rb"

ENV['SSL_CERT_FILE'] = File.expand_path('C:\tools\cacert.pem')

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = MY_CONSUMER_KEY
  config.consumer_secret     = MY_CONSUMER_SECRET
  config.access_token        = MY_ACCESS_TOKEN
  config.access_token_secret = MY_ACCESS_TOKEN_SECRET
end

user_id = ARGV[0].to_s

time = Time.now
y = time.year
mon = time.month
d = time.day
h = time.hour
min = time.min
s = time.sec

puts("読み込み完了")

if user_id != ""
    client.update("@#{user_id} FF外から失礼するゾ～（謝罪） このツイート面白スギィ！！！！！自分、RTいいっすか？ 淫夢知ってそうだから淫夢のリストにぶち込んでやるぜー いきなりリプしてすみません！許してください！なんでもしますから！(なんでもするとは言ってない)\n#{y}#{mon}#{d}#{h}#{min}#{s}")
    puts("投稿しました！")
else
    puts("[EROOR]@以下を入力してください")
end
