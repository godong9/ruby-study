
p 'foobar'.empty?
p ''.empty?

p 'foobar'.length
p '가나다a'.bytesize

p 'Alice Bob Charlie'.include?('Bob')

p 'Highlight'.start_with?('High')


p 'Pine' + 'apple'

p 'Hello' * 3

p 'Result: %04d' % 42

str = 'Pine'
str << 'apple'

p str

puts '-----------'

str = 'The Answer to life, the universe, and everything: 42'

p str.slice(4)
p str.slice(4, 6)
p str.slice(4..9)
p str.slice(/[0-9]+/)

p str.slice(-2, 2)
p str[4]
p str[4, 6]
p str[4..9]
p str[/[0-9]+/]

puts '-----------'

str = " hi \t "

p str.strip
p str.rstrip
p str.lstrip

p "hi  \n\n".chomp

p 'Users'.chop

p 'woooooooooooooooooo'.squeeze
p 'aabbccdd'.squeeze('abc')
p 'aabbccdd'.squeeze('a-c')

p 'ABC'.downcase
p 'abc'.upcase
p 'Abc'.swapcase
p 'tiTle'.capitalize

p '24-1-365'.sub(/[0-9]+/, 'x')
p '24-1-365'.gsub(/[0-9]+/, 'x')

p '24-1-365'.gsub(/[0-9]+/) {|str| str.to_i.succ }

p '24-1-365'.gsub(/([0-9]+)/) { $1.to_i.succ }

puts '---------'

str = '  hi  '
p str.strip!
p str.strip!

p 'dam'.reverse
p '가나'.reverse

str = 'dam'
p str.reverse!
p str

puts '---------'

str = 'Alice, Bob, Charlie'

p str.split(', ')
p str.split(/,\s+/)

p str.split(/,\s+/, 2)

p 'Alice'.split(//)
p 'Alice'.each_char.to_a

puts '-------------'

'부우후'.each_char {|c| print "#{c}-"}

puts '-------------'

"Alice\nBob\nCharlie".each_line do |line|
  # p line.chomp
  puts line
end


