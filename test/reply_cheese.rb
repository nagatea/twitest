require "twitter"
require "../mysystem.rb"
require "../time.rb"

ENV['SSL_CERT_FILE'] = File.expand_path('../cacert.pem')

stream_client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = MY_CONSUMER_KEY
  config.consumer_secret     = MY_CONSUMER_SECRET
  config.access_token        = MY_ACCESS_TOKEN
  config.access_token_secret = MY_ACCESS_TOKEN_SECRET
end

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = MY_CONSUMER_KEY
  config.consumer_secret     = MY_CONSUMER_SECRET
  config.access_token        = MY_ACCESS_TOKEN
  config.access_token_secret = MY_ACCESS_TOKEN_SECRET
end

puts("読み込み完了")

stream_client.user do |status|
    if status.is_a?(Twitter::Tweet)
      puts "#{status.user.name} (@#{status.user.screen_name})"
      puts status.text
      puts status
      puts '-----'
      if status.text == "ちーず"
          client.update("@#{status.user.screen_name} けーき #{TIME_CODE}", options = {:in_reply_to_status_id => status.id})
          end
    end
end