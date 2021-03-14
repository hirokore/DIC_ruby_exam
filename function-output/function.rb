def play(sports)
  puts "I'm playing #{sports}."
end

def add(n,y)
  if n+y < 50
    return "50より小さい"
  end
  return "50以上です"
end

def division(n,y)
  if n == 0
    return "0は割れないぜ"
  end
  return n / y
end

class House
end

5.times do |i|
  puts i +1
  p House.new
end
