puts 1. + (1)

class MyObject
  def ==(other)
    self.class == other.class
  end

end

puts MyObject.new == MyObject.new

puts 'A' * 3

a = 'Alice'
b = 'Alice'

puts a == b # => true
puts a.equal?(b) # => false


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


n = 1

unless n.zero?
  puts '0이 아니었다'
else
  puts '0이었다'
end

platform =
    if /darwin/ =~ RUBY_PLATFORM
      'Mac'
    else
      'others'
    end

puts platform


result = n.zero? ? '0이다' : '0이 아니다'

puts result

puts '0이다' if n.zero?
puts '0이 아니다' unless n.zero?


stone = 'ruby'

case stone
  when 'ruby'
    puts '7월'
  when 'peridot', 'sardonyx'
    puts '8월'
  else
    puts '잘 모르겠다'
end

case stone
  when /ruby/
    puts '7월'
  when /peridot|sardonyx/
    puts '8월'
  else
    puts '잘 모르겠다'
end

stone = 'ruby'

detected =
    case stone
      when /ruby/
        '7월'
      when /peridot|sardonyx/
        '8월'
      else
        '잘 모르겠다'
    end

puts detected


languages = %w(Perl Python Ruby)
i = 0

while i < languages.length
  puts "Hello, #{languages[i]}."
  i += 1
end


languages = ['Perl', 'Python', 'Ruby']
i = languages.length - 1

until i < 0
  puts "hello, #{languages[i]}"
  i -= 1
end


for name in %w(Alice Bob Carol)
  puts name
end

puts name


for val in {a: 1, b: 2}
  puts val[0] # => 키 출력
  puts val[1] # => 밸류 출력
end


for key, val in {a: 1, b: 2}
  puts key
  puts val
end


#loop do
#  puts 'infinity loop!'
#end

2.times do
  puts '안녕하세요'
end


languages = %w(Perl Python Ruby Smalltalk JavaScript)

languages.each do |language|
  puts language

  if language == 'Ruby'
    puts 'I found Ruby!'

    break
  end
end

puts '----------'

languages.each do |language|
  puts language

  next unless language == 'Ruby'

  puts 'I found Ruby!!'
end


begin
  do_process
rescue => e
  puts "Error occurred (#{e.class})"
  puts e.message
  puts e.backtrace
end


#begin
  #do_process
#rescue LoadError => e
  # 예외 처리
#rescue ArgumentError => e
  # 예외 처리
#end


begin
  do_process
rescue ArgumentError, NameError => e
  puts e.message
end


begin
  file = File.open('whatever.txt')

  do_process file
rescue
  puts '무언가 발생했다'
ensure
  file.close if file
end


returned =
    begin
      value = 'return value'

      raise
    rescue
      value
    ensure
      'this is not return value'
    end

puts returned