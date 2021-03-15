def hoge3

  40.times do | i |
    i += 1
    if i % 3 == 0
      puts "hoge"
    elsif i.to_s.include?("3")
      puts "hoge"
    else puts i
    end
  end
end

hoge3
