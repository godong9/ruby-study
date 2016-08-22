
class BaseClass
  def hello
    :hello
  end
end

base_object = BaseClass.new
p base_object.hello


class InheritClass < BaseClass

end

inherit_object = InheritClass.new
p inherit_object.hello


def base_object.hello
  :singleton_method_hello
end

p base_object.hello


module HelloModule
  def hello_from_module
    :hello_from_module
  end
end

class InheritClass
  include HelloModule
end

inherit_object = InheritClass.new

p inherit_object.hello_from_module

module ByeModule

end

class MixinClass < BaseClass
  include HelloModule
  include ByeModule
end

inherit_object = InheritClass.new
#p inherit_object.not_exist_method


module BeforeHelloFilter
  def hello
    "Hi! " + super
  end
end

class Hello
  prepend BeforeHelloFilter

  def hello
    "hello"
  end
end

p Hello.new.hello



