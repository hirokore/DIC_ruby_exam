# def lettersChange(string)
#   result = []
#   letters = string.split("")
#   letters.each do |value|
#     if (value.downcase == value) == true
#       result << value.upcase
#     else result << value.downcase
#     end
#   end
#   puts result.join
# end
#
# lettersChange("Yamashita Hiroyuki")




# def lettersChange(string)
#   result = []
#   letters = string.split("")
#   letters.each do |value|
#     if (value.downcase == value) == true
#        result << value.upcase
#      else result << value.downcase
#      end
#   end
#   puts result.join
# end
#
# lettersChange("Yamashita Hiroyuki")

# # 以下に線形探索法を行う関数を定義してください
# def linear_search(numbers,value)
#   head = 0
#   tail = numbers.length - 1
#   while head <= tail
#     center = ((head + tail) / 2.0).round
#     if (numbers[center] == value)
#       return center
#     elsif (numbers[center] < value)
#       head = center + 1
#     else tail = center -1
#     end
#   end
#   "ない！それ、ない！"
# end
# # 「探したい数字」が含まれている配列
# numbers = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]
# puts "numbers" + numbers.to_s # 配列の値をターミナルに表示
# puts '配列numbersから探したい数字を入力してください'
# # 探したい数字を入力する
# target_number = gets.to_i
# # 数字をlinear_searchメソッドで探し、探した結果をputsで出力する
# puts linear_search(numbers, target_number)

# 以下に線形探索法を行う関数を定義してください
# def linear_search(numbers,value)
#   numbers.each do |i|
#     if i == value
#       return i
#     end
#   end
#   "NONE"
# end
# # 「探したい数字」が含まれている配列
# numbers = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]
# puts "numbers" + numbers.to_s # 配列の値をターミナルに表示
# puts '配列numbersから探したい数字を入力してください'
# # 探したい数字を入力する
# target_number = gets.to_i
# # 数字をlinear_searchメソッドで探し、探した結果をputsで出力する
# puts linear_search(numbers, target_number)

# def binary_search(numbers, value)
#   # 「入力値」が含まれている配列のindexを指定するi
#   i = 0
#   # この下に、iが配列の個数を超えるまで繰り返し処理をするコードを書く
#   for i in 0..numbers.length
#     # もしも、iのindexから出される配列の値が、「入力値」と一致していたら
#     if numbers[i] == value
#       # そのインデックスの値をreturnする
#       return i
#     end
#     # もしも、iのindexから出される配列の値が、「入力値」と一致していなかったら
#     # 次の数字をチェックするためにiの数字を+1する
#     i += 1
#   end
#   # iが配列の個数を超えても入力値がなかったら、その配列の中に入力値がない
#   # ということなので、Noneを返す
#   "None"
# end
#
# # 「入力値」が含まれている配列
# numbers = [1, 3, 5, 11, 12, 13, 17, 22, 25, 28]
#
# target_number = gets.to_i
# # 数字をbinary_searchメソッドで探し、探した結果をputsで出力する
# puts(binary_search(numbers,target_number))


# # 以下に選択ソートを行う関数を定義してください
# def selection_sort(numbers)
#   i = 0
#   while i < (numbers.length) -1
#     p numbers
#     min = i
#     k = i + 1
#     while k < numbers.length
#       if numbers[k] < numbers[min]
#         min = k
#       end
#       k += 1
#     end
#     numbers[i],numbers[min] = numbers[min],numbers[i]
#     i += 1
#   end
#   p numbers
# end
# selection_sort([12, 13, 11, 14, 10])

def bubble_sort(numbers)
  i = 0
  while i < (numbers.length) -1
    p numbers
    k = 1
    while k < numbers.length
      if numbers[k-1] > numbers[k]
        numbers[k-1],numbers[k] = numbers[k],numbers[k-1]
      end
      k += 1
    end
    i += 1
  end
  p numbers
end

bubble_sort([100,50,25,4,1])
