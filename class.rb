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



