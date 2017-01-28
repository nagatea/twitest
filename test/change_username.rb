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

def return_username
  username = @client.user.name.to_s
  new_username = username.match(/(.+)@.+/)
  if new_username[1] != nil
    @client.update_profile(name: new_username[1])
    @client.update("名前を変更しました。\n#{TIME_CODE}")
  end
end

puts("読み込み完了")

test = Change_username.new

print ("input Change[1] or Return[2] => ")
n = gets.to_i
case n
  when 1
    test.change_username()
  when 2
    test.return_username()
  else
    puts ("[ERROR]入力された文字が正しくありません。")
end
end