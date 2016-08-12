#[].each
#{}.each
#(1..10).each
#''.each_char
#10.times
#loop

p [1, 2, 3].to_enum
p 'Alice'.enum_for(:each_char)

lines = <<EOM
Alice
Bob
Charlie
EOM

enum = lines.each_line
p enum.map {|line| line.length}


%w(Alice Bob Charlie).each.with_index do |name, index|
  puts "#{index}: #{name}"
end

puts %w(Alice Bob Charlie).select.with_index {|name, index|
  index > 0
}


enum = [4, 4, 2, 3].to_enum

p enum.next
p enum.next
p enum.next
p enum.next

enum.rewind

p enum.next
p enum.next
p enum.next



enum = [4, 4, 2, 3].to_enum

loop do
  puts enum.next
end


people = %w(Alice Bob Charlie).to_enum
ages = [14, 32, 28].to_enum

loop do
  person = people.next
  age = ages.next

  puts "#{person} (#{age})"
end


odd_numbers = (0..Float::INFINITY).lazy.map {|n| n.succ}.select {|n| n.odd?}.take(3)
p odd_numbers.force

