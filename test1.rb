# coding: utf-8
require "twitter"
require "oauth"

client = Twitter::REST::Client.new(
  consumer_key:        "C8MO23D1Yvn4rerE4IBapJIoJ",
  consumer_secret:     "2jh7fsh4d9d85iTyKNXTVBb0KpkWv8qJmWoMbVdHClgnBoK3Rh",
  access_token:        "736847305526018048-PWAZ9eKtoDAtr8Ki7rFBiNV7Vk9zVcn",
  access_token_secret: "Su4l7LxnMQ4S3mgCUYRa2UUxLtJI3uYHbpY7K7sdnkOBF",
)

client.update("test")
puts("投稿しました！")
