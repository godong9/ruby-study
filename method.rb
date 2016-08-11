def greet(name, message = 'Hi')
  "#{message}, #{name}"
end

puts greet('Ruby')
puts greet('Ruby', 'Hello')
puts greet('Ruby', nil)

def greet2(name, *messages)
  messages.each do |message|
    puts "#{message}, #{name}."
  end
end

greet2('Ruby', 'Hello', '안녕')


def greet3(name, *)
  puts "Hello, #{name}."
end

greet3('Ruby', 'Hello', '안녕')

puts "=========="

def greet_twice(name, first_message, second_message)
  puts "#{first_message}, #{name}."
  puts "#{second_message}, #{name}."
end

greetings = %w(Hello Hola)

greet_twice('Ruby', *greetings)


