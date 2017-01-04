require "twitter"

ENV['SSL_CERT_FILE'] = File.expand_path('C:\tools\cacert.pem')

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "C8MO23D1Yvn4rerE4IBapJIoJ"
  config.consumer_secret     = "2jh7fsh4d9d85iTyKNXTVBb0KpkWv8qJmWoMbVdHClgnBoK3Rh"
  config.access_token        = "736847305526018048-PWAZ9eKtoDAtr8Ki7rFBiNV7Vk9zVcn"
  config.access_token_secret = "Su4l7LxnMQ4S3mgCUYRa2UUxLtJI3uYHbpY7K7sdnkOBF"
end

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
