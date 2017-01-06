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

user_id = ARGV[0]

tweet_counts = []
(0..23).each { |i| tweet_counts[i] = 0 }

client.user_timeline(user_id, { count: 200 } ).each do |tweet|
  tweet_counts[tweet.created_at.hour] += 1
end

(0..23).each do |i|
  bar = "#" * tweet_counts[i]
  print "%02d  #{bar}\n" % i
end
