class MyClass
    def hello
        puts 'Hello, My object!'
    end
end

my_object = MyClass.new
my_object.hello


class Ruler
    attr_accessor :length
    @@cvar = 'Hello, My class variable!'

    def initialize(length)
        @length = length
    end

    def cvar_in_method
        puts @@cvar
    end

    def self.cvar_in_class_method
        puts @@cvar
    end

    def display_length
        puts length
    end

    def set_default_length
        self.length = 30
    end

    def self.pair
        #[Ruler.new(10), Ruler.new(4)]
        [new(10), new(4)]
    end
end

ruler = Ruler.new(40)

#ruler.length = 20
#ruler.set_default_length
puts ruler.length

Ruler.pair

puts ruler.cvar_in_method
puts Ruler.cvar_in_class_method

puts '----------'

# 슈퍼 클래스
class Parent
    def hello
        puts 'Hello, Parent class!'
    end
end

# Parent를 상속한 Child
class Child < Parent
    def hi
        puts 'Hi, Child class!'
    end

    def hello
        super

        puts 'Hello, Child class!'
    end
end

child = Child.new
child.hello
#child.hi


class MyClass
  DEFAULT_VALUE = 4423

  def initialize
    puts 'Initializing...'
  end

  def method_a
    puts 'method_a called'
  end

  def method_b
    method_a
  end
end

p MyClass::DEFAULT_VALUE

my_object = MyClass.new
p my_object

my_object.method_b


class Brownie
  def initialize
    @baked = false
  end

  def bake!
    @baked = true
  end

  def baked?
    @baked
  end
end

b = Brownie.new
p b.baked?
p b.bake!
p b.baked?


str = 'abc'

p str.reverse
p str

p str.reverse!
p str


class Rectangle
  attr_accessor :width, :height
  # attr_reader # 참조만 할 때
  # attr_write # 대입만 할 때
end

# class Ruler
#   attr_accessor :length
#
#   class << self
#     def pair
#       [new, new]
#     end
#
#     def trio
#       [new, new, new]
#     end
#   end
# end

# p Ruler.pair
# p Ruler.trio


class Processor
  def process
    protected_process
  end

  def protected_process
    private_process
  end
  protected :protected_process

  def private_process
    puts 'Done!'
  end
  private :private_process
end

processor = Processor.new
processor.process
#processor.private_process # 에러
#processor.protected_process # 에러


class Processor
  private

  def process_a

  end

  def process_b

  end
end


class Parent
  PARENT = 'constant in parent'
  def initialize
    @ivar = 'content'
  end
end

class Child < Parent

end

p Parent.new
p Child.new

p Child::PARENT


class Foo
  def override_me
    puts "in Foo Class"
  end
end

foo = Foo.new
bar = Foo.new

def bar.singleton_method
  puts 'Called!'
end
def bar.override_me
  super

  puts "in singleton method!"
end

bar.singleton_method
#foo.singleton_method
bar.override_me


class My
  class SweetClass

  end
end

p My.new
p My::SweetClass.new

class My::GreatClass

end

