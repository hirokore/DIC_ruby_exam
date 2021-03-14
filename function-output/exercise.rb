puts "演習問題1"

puts "1,2,4,5"

puts "演習問題2"

position = "受講生"
age = "30"

list = [
  "DIVE INTO CODE",
  "私は#{position}です",
  "#{age}歳です"
]

list.each do |value|
  puts value
end

puts "演習問題3"

puts 5 + 5 == 10
puts 8 - 3 == 5
puts 5 * 5 == 25
puts 40 / 5 == 8
puts 28 % 6 ==  4

puts "演習問題4"

puts 10 < 8 == false
puts 30 > 25 == true
puts (15 == 15) == true # 等しいのみを表す記号
puts (20 == 30) == false
puts (8 != 10) == true

puts "演習問題5"

puts (30 == 29) == false
puts (15 < 59) == true
puts (30 >= 30) == true
puts "(10 = 10)"
puts (60 < 100) == true
puts (100 > 200) == false
puts (40 <= 40) == true
puts (50 <= 30) == false
puts "(30 .. 40)"
puts (20 != 20) == false

puts "演習問題6"

name = "山田太郎"
age = 18

puts name
puts age

puts "演習問題7"

puts "私の名前は#{name}です。年齢は#{age}歳です。"

puts "演習問題8-1"

season = ["春","夏","秋"]
puts season

puts "演習問題8-2"

season.push "冬"
puts season

puts "演習問題8-3"

puts season[2]

puts "演習問題9-1"

house = {price:"2000万",location:"東京都",size:"100坪"}

puts "演習問題9-2"

puts house[:location]

puts "演習問題10"

house = [
  {price:"2000万",location: "東京都",size:"80坪"},
  {price:"1500万",location:"千葉県",size:"50坪"},
  {price:"800万",location:"埼玉県",size:"100坪"}
]

puts house[1][:location]
puts house[0][:size]
puts house[2][:price]
puts house[2][:size]

puts "演習問題11-1"
puts "演習問題11-2"

num = 30

if num == 30
  puts "30ジャストだよ"
elsif num < 50
  puts "50未満だよ"
elsif num >= 50
  puts "50以上だよ"
end

puts "演習問題12"

num = 9

case num % 2
when 0
  puts "numは偶数"
when 1
  puts "numは奇数"
end

puts "演習問題13-15"

10.times do
  puts "おはよう"
end

for i in 0..10 do
  puts "ohayo"
end

i = 0
while i < 10 do
  puts "osoyo"
  i += 1
end

puts "演習問題16"

numbers = []
i = 1

while i < 11 do
  numbers.push i
  i += 1
end

p numbers

numbers.each do |value|
  puts value
end

puts "演習問題17"

def addition(x,y,z)
  return (x + y + z) / 3
end

puts addition(2,3,7)

puts "演習問題18"

def division(x,y)
  return x / y
end

puts division(10,5)

puts "演習問題19"

puts "エラーです。"

puts "演習問題20"

def doing(day,place,food)
  return "#{day}は#{place}で#{food}を食べる"
end

puts doing("今日","渋谷","カレー")
puts doing("明日","池袋","オムライス")




puts "EOF"
