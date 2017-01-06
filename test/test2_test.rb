time = Time.now

y = time.year
mon = time.month
d = time.day
weeks = ["日", "月", "火", "水", "木", "金", "土"]
w = time.wday
h = time.hour
min = time.min
s = time.sec

puts("投稿時間は#{y}年#{mon}月#{d}日の#{weeks[w]}曜日、#{h}時#{min}分#{s}秒です。")
puts("投稿しました！")
