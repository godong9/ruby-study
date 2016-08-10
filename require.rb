#require '/path/to/library.rb' # /path/to/library.rb 읽기
#require './library' # ruby 실행 디렉터리에서 찾아서 읽기
#require 'library' # $LOAD_PATH에서 찾아서 읽기

puts __dir__

puts $PROGRAM_NAME

puts ARGV

puts ENV

puts RUBY_VERSION