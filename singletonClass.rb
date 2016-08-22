
class OriginalClass

end

obj = OriginalClass.new

def obj.new_singleton_method
  :new_singleton_method
end

p obj.class.method_defined? :new_singleton_method

p obj.singleton_class.method_defined? :new_singleton_method


class Klass; end

klass = Klass.new
p klass.singleton_class

KLASS_OBJECT = klass

p class << klass; self; end == KLASS_OBJECT.singleton_class


obj = Object.new

def obj.define_singleton_method
  :singleton_method
end


class OriginalClass

end

obj = OriginalClass.new
p obj.singleton_class
p obj.singleton_class.superclass

p obj.instance_of? obj.singleton_class
p obj.instance_of? OriginalClass

# p 1.singleton_class # => TypeError
# p :symbol.singleton_class # => TypeError

p true.singleton_class
p false.singleton_class
p nil.singleton_class


class Klass; end
klass = Klass.new

EigenClass = klass.singleton_class

# p EigenClass.new # => TypeError

#class NewClass < EigenClass
#end
# => TypeError


module ExtendedModule
  def extend_method
    :extend_method
  end
end

obj = Object.new
obj.extend ExtendedModule

p obj.extend_method


obj = Object.new

p obj.singleton_class.ancestors
obj.extend ExtendedModule
p obj.singleton_class.ancestors


SINGLETON_OBJECT = Object.new

class << SINGLETON_OBJECT
  def only_method
    :only_method
  end
end

SingletonClass = SINGLETON_OBJECT.singleton_class

def SingletonClass.instace_get
  SINGLETON_OBJECT
end
