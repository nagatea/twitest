require "twitter"
require "../mysystem.rb"

ENV['SSL_CERT_FILE'] = File.expand_path('C:\tools\cacert.pem')

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = MY_CONSUMER_KEY
  config.consumer_secret     = MY_CONSUMER_SECRET
  config.access_token        = MY_ACCESS_TOKEN
  config.access_token_secret = MY_ACCESS_TOKEN_SECRET
end

puts("読み込み完了")

mytl = client.home_timeline #TLを取得
hist = []
while 1

	update = mytl - hist #前回取得したTLとの差分
	num = update.length - 1
	
	num.downto(0) do |i|
        username = client.status(update[i]).user.name # 発言者ID
		userscreenname = client.status(update[i]).user.screen_name
        contents = client.status(update[i]).text # 発言内容
		user_status = username + "(@" + userscreenname + ")"
		puts user_status
		puts contents
		puts "-----"

	end
	hist = mytl
	sleep(60)
	mytl = client.home_timeline
end