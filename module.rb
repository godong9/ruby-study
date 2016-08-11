module Brainfsck
    class Parser
        puts 'Brainfsck parser'
    end
end

module Whitespace
    class Parser
        puts 'Whitespace parser'
    end
end

Brainfsck::Parser
Whitespace::Parser


module Sweet
    def self.lot
        %w(brownie apple-pie bavarois pudding).sample
    end
end

p Sweet.lot
p Sweet.lot


module Sweet
  module Chocolate

  end

  class Brownie

  end
end

p Sweet::Chocolate
p Sweet::Brownie



module Greetable
  def greet_to(name)
    puts "Hello, #{name}. My name is #{self.class}."
  end
end

class Alice
  include Greetable

  def greet_to(name)
    super

    puts 'Nice to meet you!'
  end
end

alice = Alice.new
alice.greet_to 'Bob'


class FriendList
  include Enumerable

  def initialize(*friends)
    @friends = friends
  end

  def each
    for v in @friends
      yield v
    end
  end
end

friend_list = FriendList.new('Alice', 'Bob', 'Charlie')

p friend_list.count
p friend_list.map {|v| v.upcase}
p friend_list.find {|v| /b/ === v}


module ModuleA
  def from_a
    puts 'A'
  end
end

module ModuleB
  def from_b
    puts 'B'
  end
end

class MyClass
  include ModuleA
  include ModuleB
end

my_object = MyClass.new
my_object.from_a
my_object.from_b


module ModuleC
  def from_c
    puts 'C'
  end
end

module ModuleD
  include ModuleC

  def from_d
    puts 'D'
  end
end

class MyClass
  include ModuleD
end

my_object = MyClass.new
my_object.from_c
my_object.from_d


module Greetable
  def greet_to(name)
    puts "Hello, #{name}. I'm a #{self.class}."
  end
end

o = Object.new
o.extend Greetable

o.greet_to 'World'


class Alice
  extend Greetable
end

Alice.greet_to 'World'


p Math.sqrt(4)

include Math
p sqrt(4)


module MyFunctions
  module_function

  def my_first_function
    puts 'first'
  end

  def my_second_function
    puts 'second'
  end
end


#autoload :MySweets, 'my_library/my_sweets'

#MySweets # 여기서 require





