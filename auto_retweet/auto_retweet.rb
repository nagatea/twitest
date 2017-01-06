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

#while true
  client.user do |object|
    puts "recieve a message / class: #{object.class}"
    case object
    when Twitter::Tweet
        puts(object.text)
    end
  end
#end