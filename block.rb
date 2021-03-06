%w(Alice Bob Charlie).each do |name|
  puts "Hello, #{name}."
end


def block_sample
  puts 'stand up'
  yield if block_given?
  puts 'sit down'
end

block_sample

block_sample do
  puts 'walk'
end


file = File.open('without_block.txt', 'w')
file.puts 'without block'
file.close

File.open 'with_block.txt', 'w' do |file|
  file.puts 'with block'
end


def display_value
  puts yield
end

display_value do
  4423 # => 4423 출력
end

display_value do
  next 42 # => 42 출력
end

display_value do
  break 52 # => nil 출력
end


def with_current_time
  yield Time.now
end

with_current_time do |now|
  puts now.year
end

def flexible_arguments_for_block
  yield 1, 2, 3
end

flexible_arguments_for_block do |*params|
  puts params.inspect
end

puts "----------"

people = %w(Alice Bob Charlie)
block = Proc.new {|name| puts name}

people.each &block


people = %w(Alice Bob Carol)

puts people.map {|person| person.upcase }.inspect


puts people.map(&:upcase).inspect


def write_with_lock
  File.open 'time.txt', 'w' do |f|
    f.flock File::LOCK_EX

    yield f

    f.flock File::LOCK_UN
  end
end

write_with_lock do |f|
  f.puts Time.now
end


def keywords(alice: nil, bob: nil)
  {alice: alice, bob: bob}
end

keywords alice: '앨리스', bob: '밥'


def keywords_with_options(alice: nil, bob: nil, **others)
  {alice: alice, bob: bob, others: others}
end

keywords_with_options alice: '앨리스', bob: '밥', charlie: '찰리'


puts Time::now


# alias
alias greet puts

greet 'hi'

