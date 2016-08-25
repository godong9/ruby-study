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


puts "=========="
puts "=========="

array = [1, 2, 3, 4, 5]
array_shift = array.method(:shift)

p array_shift.call

p array


class Dog
  def bark
    puts 'wan!!'
  end
end

dog = Dog.new
bark_wan = dog.method(:bark)

class Dog
  def bark
    puts 'bowwow!!'
  end
end

dog.bark

bark_wan.call

def dog.bark
  puts 'kyankyan!!'
end

dog.bark

bark_wan.call


class Arity
  def arity_0; end
  def arity_1(x); end
  def arity_2(x, y); end
end

arity_obj = Arity.new
p arity_obj.method(:arity_0).arity
p arity_obj.method(:arity_1).arity
p arity_obj.method(:arity_2).arity


class MethodParameter
  def arity0(); end
  def arity1(x); end
  def arity1_and_default_val(x = 1); end
  def arity1_and_valiable_arg(x, *y); end
  def arity1_and_block_arg(x, &y); end
end

method_params = MethodParameter.new
p method_params.method(:arity0).parameters
p method_params.method(:arity1).parameters
p method_params.method(:arity1_and_default_val).parameters
p method_params.method(:arity1_and_valiable_arg).parameters
p method_params.method(:arity1_and_block_arg).parameters


class MethodInfo
  def sample_method; end
end

obj = MethodInfo.new
sample_method = obj.method(:sample_method)

p sample_method.owner
p sample_method.name
p sample_method.receiver


p Array.instance_method(:shift)

p [].method(:shift).unbind


unbind_shift = [].method(:shift).unbind
unbind_shift.bind([1, 2, 3])
p unbind_shift.bind([1, 2, 3]).call


class SuperKlass
  def super_method
    self.class
  end
end

class Klass < SuperKlass
end

class NotInheritKlass
  def super_method
    self.class
  end
end

super_klass = SuperKlass.new
klass = Klass.new
not_inherit_klass = NotInheritKlass.new

unbind_super_method = SuperKlass.instance_method(:super_method)

p unbind_super_method.bind(super_klass).call

p unbind_super_method.bind(klass).call

#p unbind_super_method.bind(not_inherit_klass).call



