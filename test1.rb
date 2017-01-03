#!/usr/bin/env ruby

require 'rubygems'
require 'rubytter'
require 'oauth'

CONSUMER_KEY = 'C8MO23D1Yvn4rerE4IBapJIoJ'
CONSUMER_SERCRET = '2jh7fsh4d9d85iTyKNXTVBb0KpkWv8qJmWoMbVdHClgnBoK3Rh'

ACCESS_TOKEN = '736847305526018048-PWAZ9eKtoDAtr8Ki7rFBiNV7Vk9zVcn'
ACCESS_TOKEN_SERCTET = 'Su4l7LxnMQ4S3mgCUYRa2UUxLtJI3uYHbpY7K7sdnkOBF'

consumer = OAuth::Consumer.new(
  CONSUMER_KEY,
  CONSUMER_SERCRET,
  :site => 'http://api.twitter.com'
)

access_token = OAuth::AccessToken.new(
  consumer,
  ACCESS_TOKEN,
  ACCESS_TOKEN_SERCTET
)

rubytter = OAuthRubytter.new(access_token)

rubytter.update("てすと")
puts("投稿しました！")
