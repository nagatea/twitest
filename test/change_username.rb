require "twitter"
require "./mysystem.rb"
require "../time.rb"

ENV['SSL_CERT_FILE'] = File.expand_path('../cacert.pem')

class Change_username
def initialize
  @client = Twitter::REST::Client.new do |config|
    config.consumer_key        = MY_CONSUMER_KEY
    config.consumer_secret     = MY_CONSUMER_SECRET
    config.access_token        = MY_ACCESS_TOKEN
    config.access_token_secret = MY_ACCESS_TOKEN_SECRET
  end
end

def change_username
  username = @client.user.name.to_s + "@てすと"
  @client.update_profile(name: username)
  @client.update("名前を変更しました。\n#{TIME_CODE}")
end
end

puts("読み込み完了")

test = Change_username.new

test.change_username()

