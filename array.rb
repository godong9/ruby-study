
p Array.new(5, 1)

array = Array.new(3, 'naive')
array[0].reverse!

p array


Array.new(3) {|index| index.succ}

Array('Alice')
Array(['Alice'])
Array(nil)

array = [4, 4, 2, 3]

p array.length
p array.empty?
p [].empty?

p array.include?(4)

p [1, 2, 3] + [4, 5]
p [4, 4, 2, 3] - [4, 3]

p [1, 2, 3] & [2, 3, 4]

p [1, 2, 3] * 2


array = [4, 4, 2, 3]
p array[2]
p array[2, 2]
p array[2..4]

p array.values_at(1)
p array.values_at(1, 3)

p array.first
p array.first(2)
p array.last

p array.sample
p array.sample(2)

ary = [[:foo, 4], [:bar, 2], [:baz, 3]]
p ary.assoc(:bar)


array = [4, 4, 2, 3]

array[0] = 5
p array

array[10] = 1
p array

array = [4, 4, 2]

array << 3
p array

array.push 10
p array

p array.pop
p array


array = [4, 4, 2, 3]

p array.shift
p array

p array.unshift 4
p array


array = [1, 2, 3, 4]
array.select! {|v| v.even? }
p array

array.reject! {|v| v.even? }
p array


puts '-----'

array = [1, 2, 3, 4]

p array.delete_if {|v| false}
p array.reject! {|v| false}

p array.keep_if {|v| true}
p array.select! {|v| true}

array = [4, 4.0, 2, 3]
array.delete 4
p array

array = [4, 4, 2, 3]
array.delete_at 3
p array


array = [false, nil, 0, '', []]
p array.compact
p array

p array.compact!
p array


array = [4, 4, 4.0, 2]
p array.uniq
p array

p array.uniq!
p array

puts '-------'

array = [4, 4, 2, 3]
p array.reverse
p array

p array.reverse!
p array

array = [4, [4, [2, 3]]]
p array.flatten

array = [4, 4, 2, 3]
array.sort!
p array

array = ['ffooo', 'ffo', 'fo', 'f']
array.sort_by! {|v| v.length}
p array

people = %w(Alice Bob Charlie)
people.map! {|person| person.upcase}

p people


array = [1, 'a']
p array.zip([2, 'b'], [3, 'c'])


array = [1, 3, 5, 7, 9]

p array.bsearch {|n| n > 6}
p array.bsearch {|n| n > 10}


array = [24, 1, 365]
p array.join
p array.join('-')

