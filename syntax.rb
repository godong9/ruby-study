if true
    puts 'Ping'
end

str = 'Ping'

if str
    puts str
end

if false
    puts 'Ping'
else
    puts 'Pong'
end

n = 2

if n.zero?
    puts '0이었다'
elsif n.even?
    puts '짝수였다'
elsif n.odd?
    puts '홀수였다'
else
    puts '모르겠다'
end


val = 'Hello'

if true
    'Hello'
end

puts "=========="


# 다양한 대입식
a, b = 1, 2

puts a
puts b

a, b = [1, 2, 3]

puts a
puts b

a, *b = [1, 2, 3]

a
b # => [2, 3]

c, d, e = [1, 2]
puts c
puts e


a = 'a'
b = 'b'

a, b = b, a

puts a
puts b

a = 1
a += 1

b ||= 2 # => b = b || 2


begin
    1 / 0
rescue ZeroDivisionError
    puts '에러'
end



