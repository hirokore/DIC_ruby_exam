seats_and_groups = gets.split(/\s/)

p "seats_and_groups #{seats_and_groups}"


empty_seat = [*1..(seats_and_groups[0].to_i)]

p "empty_seat #{empty_seat}"

seats_count = empty_seat.count

p "seats_count #{seats_count}"

number_of_visitors = seats_and_groups[1].to_i

p "number_of_visitors #{number_of_visitors}"

used_seats = gets.split(/\s/)

users = used_seats[0].to_i

p "users #{users}"

seating_number = used_seats[1].to_i

p "seating_number #{seating_number}"

fill_last_number = ((seating_number + users) - 1)

p "fill_last_number #{fill_last_number}"

if fill_last_number > seats_count

  fill_last_number = fill_last_number - seats_count

  p "fill_last_number #{fill_last_number}"

  next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..seats_count] + [*1..fill_last_number]
  p [*1..seats_count]
  p empty_seat
  p ([*1..seats_count] - empty_seat)
  p [*seating_number..seats_count] + [*1..fill_last_number]

  p "next_seat_candidate #{next_seat_candidate}"
else
  next_seat_candidate = ([*1..seats_count] - empty_seat) + [*seating_number..fill_last_number]
  p "next_seat_candidate #{next_seat_candidate}"
end
