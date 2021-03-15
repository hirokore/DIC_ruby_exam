def mySize(x)
  count = 0
  x.split("").each do
    count += 1
  end
  count
  end

def repeat_string(str)
  nagasa = mySize(str)
  #以下にコードを記述する
  if nagasa > 5
      puts str.slice(0,4) * 3
   else
      puts str * 3
  end
end
repeat_string('Python')
repeat_string('Go')
repeat_string('C++')
repeat_string('JavaScript')
