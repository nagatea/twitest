require "twitter"
require "../mysystem.rb"

ENV['SSL_CERT_FILE'] = File.expand_path('../cacert.pem')

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = MY_CONSUMER_KEY
  config.consumer_secret     = MY_CONSUMER_SECRET
  config.access_token        = MY_ACCESS_TOKEN
  config.access_token_secret = MY_ACCESS_TOKEN_SECRET
end

stream_client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = MY_CONSUMER_KEY
  config.consumer_secret     = MY_CONSUMER_SECRET
  config.access_token        = MY_ACCESS_TOKEN
  config.access_token_secret = MY_ACCESS_TOKEN_SECRET
end

puts("読み込み完了")

mytl = client.home_timeline #TLを取得
hist = []

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


stream_client.user do |status|
    if status.is_a?(Twitter::Tweet)
      puts "#{status.user.name} (@#{status.user.screen_name})"
      puts status.text
      puts '-----'
    end
end

