puts 1
puts "hi\n"
puts "Alice", "Bob"

print 'Hi'
print 1, 0.5, 'foo'

puts '-------'

sprintf('%04d', 1)
'%04d' % 1

printf '%04d', 1

puts '-------'

p 4423
p 4423, [24, 1, 365]


warn "An error occurred!"


#print "ADD Number1: "
#a = Integer(gets)

#print "ADD Number2: "
#b = Integer(gets)

#puts "Sum: #{a + b}"


num = 1
p `head -#{num} ./time.txt`

system('uname')

#exec 'uname'
#puts 'Not print'

pid = spawn('uname')

Process.waitpid pid

ENV['HOGE'] = 'huga'

system('echo $HOGE')

system({'HOGE' => 'piyo'}, 'echo $HOGE')

pid = spawn({'HOGE' => 'piyo'}, 'echo $HOGE')

Process.waitpid pid

#exec({'HOGE' => 'piyo'}, 'echo $HOGE')

system('echo `pwd`', chdir: '/tmp')


require 'erb'

require_relative 'method'

load __dir__ + '/module.rb'

# 현재 경로를 추가
$LOAD_PATH << File.dirname(__FILE__)

require 'syntax'

#trap :INT do
#  puts "\nInterrupted!"
#  exit
#end

#loop do
#  sleep 1
#end

trap :EXIT do
  puts 'Finalizing...'
end

puts 'Running...'



