def bigger(a,b)
  if a > b
    a
  else
    b
  end
end

def biggest(a,b,c)
  bigger_value = bigger(a,b)
  if bigger_value == a
    biggest = bigger(a,c)
  elsif bigger_value == b
    biggest = bigger(b,c)
  end
  biggest
end

def median(a,b,c)
  biggest_number = biggest(a, b, c)
  if biggest_number == a
    median_number = bigger(b, c)
  elsif biggest_number == b
    median_number = bigger(a, c)
  elsif biggest_number == c
    median_number = bigger(a, b)
  end
end



puts median(4,2,8)
