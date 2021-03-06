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

if ARGV[0].to_s != "" && ARGV[1].to_i > 0
    client.user_timeline(ARGV[0], { count: ARGV[1] } ).each do |timeline|
        puts client.status(timeline.id).text
    end
else
    puts("[EROOR]IDと数字をただしく入力してください")
end
