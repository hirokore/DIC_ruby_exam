blogs = []

while true
["以下より行う操作を選んでください","１：ブログを作成する","２：作成されたブログを見る","３：ブログアプリを終了する"].each do |value|
  puts value
end

number = gets.to_i

# if number == 1
#   puts "1:ブログを作成する"
#   puts "ブログのタイトルを入力してください"
#   blog_title = gets
#   puts "ブログの本文を入力してください"
#   blog_content = gets
#   puts "入力されたタイトルと本文は以下です"
#   puts "タイトル：#{blog_title}"
#   puts "本文：#{blog_content}"
# elsif number == 2
#   puts "2:作成されたブログを見る"
# elsif number == 3
#   puts "3:ブログアプリを終了する"
# else
#   puts "1~3の数字を入力してください"
# end
#
case number
when 1
  blog = {}
  puts "1:ブログを作成する"
  puts "ブログのタイトルを入力してください"
  blog[:title] = gets
  puts "ブログの本文を入力してください"
  blog[:content] = gets
  blogs << blog
  puts "入力されたタイトルと本文は以下です"
  puts "タイトル：#{blog[:title]}"
  puts "本文：#{blog[:content]}"
when 2
  puts "2:作成されたブログを見る"
  blogs.each do |key|
    puts "タイトル：#{key[:title]}"
    puts "本文：#{key[:content]}"
  end
when 3
  puts "3:ブログアプリを終了する"
  break
else
  puts "1~3の数字を入力してください"
end
end
