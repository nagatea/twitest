require "twitter"
require "./mysystem.rb"

ENV['SSL_CERT_FILE'] = File.expand_path('../cacert.pem')

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = MY_CONSUMER_KEY
  config.consumer_secret     = MY_CONSUMER_SECRET
  config.access_token        = MY_ACCESS_TOKEN
  config.access_token_secret = MY_ACCESS_TOKEN_SECRET
end
puts("読み込み完了")

new_trend = client.trends(1118370).to_h
val_trend = new_trend[:trends]
trend_s = ""
val_trend.each do |tre|
  if trend_s.length < 130
    trend_s << "#{tre[:name]}\n"
  end
end
puts trend_s.length
client.update(trend_s)
