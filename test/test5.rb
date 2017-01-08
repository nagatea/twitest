require "twitter"
require "../mysystem.rb"

ENV['SSL_CERT_FILE'] = File.expand_path('../cacert.pem')

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = MY_CONSUMER_KEY
  config.consumer_secret     = MY_CONSUMER_SECRET
  config.access_token        = MY_ACCESS_TOKEN
  config.access_token_secret = MY_ACCESS_TOKEN_SECRET
end
puts("読み込み完了")

if ARGV[1].to_s == "follow"
  client.follow(ARGV[0])
  client.update("#{ARGV[0]} をフォローしました")
  puts("@#{ARGV[0]}をフォローしました")
elsif ARGV[1].to_s == "unfollow"
  client.unfollow(ARGV[0])
  client.update("#{ARGV[0]} をリムりました")
  puts("@#{ARGV[0]}をリムりました")
else
  puts("[ERROR]IDとfollow or unfollowを正しく入力してください")
end