max = 8
min = 2

[2,4,8].each do |value|
  if value != max && value != min
    med = value
  end
end

puts med
