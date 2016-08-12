
%w(Alice Bob Charlie).each_with_index do |name, index|
  puts "#{index}: #{name}"
end

(1..3).reverse_each do |val|
  puts val
end

(1..5).each_slice 2 do |a, b|
  p [a, b]
end

(1..4).each_cons 2 do |a, b|
  p [a, b]
end

(1..4).each do |val|
  puts val
end

# (1..3).cycle do |n|
#  puts n
# end


p ['ruby', 'rails'].map {|str| str.upcase}


p ['aa', true, true].all? # => true
p [false, false, false].none? # => true

p [false, 'any', false].any? # => true
p [false, nil, false].any? # => false

p [true, false, false].one? # => true


p [4, 4, 2, 3].all? {|v| v.is_a?(Integer)}
p [4, 4, 'two'].all? {|v| v.is_a?(Integer)}


p %w(Alice Bob Charlie).grep(/a/i)
p ['a', 'b', 3, 4].grep(String)

object = Object.new
p object.methods.grep(/\?/)

array = [4, 4, 2, 3]
p array.detect {|v| v.even? }

array = [4, 4, 2, 3]
p array.select {|v| v.even?}
p array.reject {|v| v.even?}

array = [1, 2, 3, 4, 5]

p array.take(3)
p array.drop(3)

puts '---------------'

p array.take_while {|n| n < 3}
p array.drop_while {|n| n < 3}


p [4, 4, 2, 3].inject(0) {|result, num|
  result + num
}

p [4, 4, 2, 3].inject(:+)


p %w(Alice Bob Charlie).each_with_object({}) {|name, result|
  result[name] = name.length;
}

array = [1, 2.0, 3.0, 4]

p array.group_by {|val| val.class}

array = [1, 2, 3, 4, 5]

p array.partition {|n| n.even? }


range = (1..10)

p range.max
p range.min
p range.minmax


people = %w(Alice Bob Charlie)
p people.min_by {|s| s.length}
p people.max_by {|s| s.length}
p people.minmax_by {|s| s.length}


people = %w(Bob Alice Charlie)

p people.sort
p people.sort {|a, b| a.length <=> b.length }
p people.sort_by {|name| name.length}








