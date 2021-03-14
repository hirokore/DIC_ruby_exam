def median(a,b,c)
  max = ""
  min = ""
  med = ""
# max値
  if a > b
    if a > c
      max = a
    else
      max = c
    end
  elsif b > c
    max = b
  else
    max = c
  end
# min値
  if a < b
    if a < c
      min = a
    else
      min = c
    end
  elsif b < c
    min = b
  else
    min = c
  end
# median値
  [a,b,c].each do |value|
    if value != max && value != min
      med = value
    end
  end
  med
end

puts median(4,2,8)
