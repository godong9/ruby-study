p Class.ancestors

p Class.instance_methods(false)

class FirstClass

end

FirstClass = Class.new

first_class_instance = FirstClass.new
p first_class_instance.class.name

SecondClass = Class.new(FirstClass)
p SecondClass.superclass


class Klass
  #self # => Klass
  @class_instance_val = :class_instance_val
  @@class_val = :class_val

  def self.class_instance_val
    @class_instance_val
  end

  def instance_method
    p @class_instance_val # => nil
    p @@class_val # => :class_val
  end
end

p Klass.class_instance_val


class Klass
  @class_instance_val = :class_instance_val
  @@class_val = :class_val
end

class InheritClass < Klass
  @class_instance_val # => nil

  @@class_val # => :class_val
end


class InstanceCountClass
  @@instance_count = 0

  def self.instance_count
    @@instance_count
  end

  def initialize
    @@instance_count += 1
  end
end

p InstanceCountClass.instance_count # => 0

5.times do
  InstanceCountClass.new
end

p InstanceCountClass.instance_count # => 5


class NewInstanceCountClass < InstanceCountClass

end

p NewInstanceCountClass.instance_count # => 5

5.times do
  NewInstanceCountClass.new
end

p NewInstanceCountClass.instance_count # => 10

puts '-------'

class InstanceCountClass
  @instance_count = 0

  def self.instance_count_up
    @instance_count += 1
  end

  def self.instance_count
    @instance_count
  end

  def initialize
    self.class.instance_count_up
  end
end

5.times do
  InstanceCountClass.new
end

p InstanceCountClass.instance_count


class NewInstanceCountClass < InstanceCountClass
end

p NewInstanceCountClass.instance_count # => nil

# 5.times do
#   NewInstanceCountClass.new
# end

# p InstanceCountClass.instance_count # => 5
# p NewInstanceCountClass.instance_count # => nil


class Klass
  def self.class_method
    :class_method
  end
end


class Klass

end

def Klass.class_method
  :class_method
end

p Klass.class_method


class Klass
  def instance_method
    :instance_method
  end
end

obj = Klass.new
p obj.instance_method

puts '------------'

module FirstIncludeModule
  def same_name_method
    :first_included_module
  end
end

module SecondIncludeModule
  def same_name_method
    :second_included_module
  end
end

class Klass
  include FirstIncludeModule
  include SecondIncludeModule
end

object = Klass.new
p object.same_name_method


module UnIncludedModule
  def un_included_module_method
    :un_included_module_method
  end
end

class Klass
  define_method :un_included_module_method, UnIncludedModule.instance_method(:un_included_module_method)
end

object = Klass.new
p object.un_included_module_method



