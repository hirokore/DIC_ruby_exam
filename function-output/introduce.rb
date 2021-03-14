def introduce(name,age)
  puts "私は#{name}です。年齢は#{age}歳です。"
end

puts "what your name?"
name = gets.chomp
puts "what your age?"
age = gets.to_i

introduce(name,age)
