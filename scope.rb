# 지역변수
foo = 'foo in toplevel'

def display_foo
    #puts foo
    puts 'test'
end

puts foo
display_foo

greeting = 'Hello, '
people = ['Alice', 'Bob']

people.each do |person|
    puts greeting + person
end


# 전역변수
$foobar = 'barbaz'
$undefined


# 상수
FOO_BAR = 'bar'

puts FOO_BAR

FOO_BAR = 'foo'

puts FOO_BAR


