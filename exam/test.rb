# 下記のコードが何をしているかを説明してください・・・（A）（８）最初の行（座席数と入店するグループの総数）の入力を受け付けます

seats_and_groups = gets.split(/\s/)

# 下記のコードが何をしているかを説明してください・・・（B）     （１０）座席を配列で作成します

empty_seat = [*1..(seats_and_groups[0].to_i)]

# 下記のコードが何をしているかを説明してください・・・（C）（１３）座席の数を変数に入れておきます

seats_count = empty_seat.count


# 下記のコードが何をしているかを説明してください・・・（D）（１１）何組のグループが入店するのか、その数を変数に入れておきます

number_of_visitors = seats_and_groups[1].to_i

# 下記のコードが何をしているかを説明してください・・・（E）（１５）入店するグループの数だけループさせます

[*1..number_of_visitors].each do

  # 下記のコードが何をしているかを説明してください・・・（F）（４）二行目以降の行（グループの人数と着席開始座席番号）の入力を受け付けます

  used_seats = gets.split(/\s/)

  # 下記のコードが何をしているかを説明してください・・・（G） （６）来店したグループの人数を変数に代入します

  users = used_seats[0].to_i

  # 下記のコードが何をしているかを説明してください・・・（H） （１２）来店したグループの着席開始座席番号を変数に代入します

  seating_number = used_seats[1].to_i

  # 下記のコードが何をしているかを説明してください・・・（I） （９）来店したグループの最後の人間が着席した座席の番号を変数に代入します

  fill_last_number = ((seating_number + users) - 1)

  # 下記のコードが何をしているかを説明してください・・・（J）（１４）最後の人間が着席した座席の番号が、最初に定義された座席の数を超えていた場合と、そうでない場合とで座席の埋め方をif文で分岐させます

  if fill_last_number > seats_count

    # 下記のコードが何をしているかを説明してください・・・（K） （３）もしも最後の人間が着席した座席の番号が、最初に定義された座席の数を超えていたら、最初の座席の数に戻して再計算します（円卓だから）

    # （下記のコードは理解が難しいので、下記にヒントを載せます）
    # 「今回のグループが最後に着席する座席の番号」 = 「今回のグループが最後に着席する座席の番号」-「そもそもの座席の総数」となる（円卓だから）。
    # 例えば、fill_last_number == 13で、seats_countが12だったら、1 = 13 - 12となり、座席番号が１の座席に最後の人間が座る。
    fill_last_number = fill_last_number - seats_count
    # （下記のコードは理解が難しいので、下記にヒントを載せます）
    # next_seat_candidateは、「その座席に既に人が座っていないか？」を判断するための配列

    # ([*1..seats_count] - empty_seat)は、（「全ての座席」-　「まだ人が座っていない座席」）の意味。つまり、「既に人が座っている座席」の数字が、([*1..seats_count] - empty_seat)

    # [*seating_number..seats_count]は、[*「今回のグループが最初に着席する座席の番号」..「最後の座席の番号」]の意味
    # [*1..fill_last_number]は、[*「１（最初の座席）」..「今回のグループが最後に着席する座席の番号」]の意味
    # なので、next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..seats_count] + [*1..fill_last_number]は、
    # next_seat_candidate = 「既に人が座っている座席」+ [*「今回のグループが最初に着席する座席の番号」..「最後の座席の番号」] + [*「１（最初の座席）」..「今回のグループが最後に着席する座席の番号」]となる。
    # つまり、 next_seat_candidateの配列の中に、同じ数字が含まれていれば、「既に埋まっている座席に新たなグループの人間が座ろうとしている」ということになる
    next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..seats_count] + [*1..fill_last_number]
  else
    # 下記のコードが何をしているかを説明してください・・・（L）
    # （下記のコードは理解が難しいので、下記にヒントを載せます）
    # next_seat_candidate = 「既に人が座っている座席」+ [*「今回のグループが最初に着席する座席の番号」..「今回のグループが最後に着席する座席の番号」]となる
    # つまり、 next_seat_candidateの配列の中に、同じ数字が含まれていれば、「既に埋まっている座席に新たなグループの人間が座ろうとしている」ということになる
    next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..fill_last_number]
  end
  # 下記のコードが何をしているかを説明してください・・・（M）
  if next_seat_candidate.count == next_seat_candidate.uniq.count
    # 下記のコードが何をしているかを説明してください・・・（N）
    if ((seating_number + users) - 1) > seats_count
      # 下記の二行のコードが何をしているかを説明してください・・・（O）
      empty_seat = empty_seat - [*1..fill_last_number]
      empty_seat = empty_seat - [*seating_number..seats_count]
    else
      # 下記のコードが何をしているかを説明してください・・・（P）
      empty_seat = empty_seat - [*seating_number..fill_last_number]
    end
  end
end
# 下記のコードが何をしているかを説明してください・・・（Q）
puts seats_count - empty_seat.count
