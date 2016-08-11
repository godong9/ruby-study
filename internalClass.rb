puts 'result:\t#{1+1}'
puts "result:\t#{1+1}"


paragraph = "99 bottles of beer on the wall, \99 bottles of beer."

puts paragraph

str = <<EOS
    첫번째 줄
    두번쨰 줄
EOS

puts str

weather = 'rainy'

puts %q(It's #{weather})
puts %(It's #{weather})
puts %Q(It's #{weather})

puts :ruby


people = ['Alice', 'Bob', 'Carol']

puts people[0]
puts people[1]
puts people[-1]
puts people[10]

people[3] = 'Charlie'
puts people[3]

people[6] = 'Frank'

puts '====='
puts people

puts '====='


# 해시
colors = {'red' => 'ff0000', 'green' => '00ff00', 'blue' => '0000ff'}

puts colors['blue']
puts colors['black']

colors['green'] = '008000'

puts colors['green']

colors2 = {:red => 'ff0000'}

puts colors2[:red]

colors3 = {red: 'ff0000'}

puts colors3[:red]

puts '====='


# 범위
puts (1..5).include?(5) # => true
puts (8...5).include?(5) # => false

vacation = Time.at(1343746800)..Time.at(134625199)
puts vacation.begin
puts vacation.end

abc = ('a'..'c')

abc.each do |c|
  puts c
end

puts '======'

# 정규표현식
pattern = /[0-9]+/

puts pattern === 'HAL 9000'
puts pattern === 'Space Odyssey'

puts pattern =~ 'HAL 9000'
puts pattern =~ 'Space Odyssey'

name = 'alice'

/hello, #{name}/

%r(/usr/bin)

pwd = Dir.pwd
%r(#{pwd}/.+)


%q{paren(and paren)}
%r{/usr/(bin|lib)/}

puts '======'

# Proc
greeter = Proc.new { |name|
  puts "Hello, #{name}!"
}

greeter.call 'Proc'
greeter.call 'Ruby'

format = Proc.new { |name|
  name = name.capitalize

  puts "Hello, #{name}!"
}

format.call('alice')


by_proc = proc {|name| puts "Hello, #{name}!"}
by_lambda = lambda {|name| puts "Hello, #{name}!"}
by_literal = ->(name) { puts "Hello, #{name}!" }



