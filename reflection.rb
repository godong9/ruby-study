class HaveInstanceVal
  def initialize
    @foo = 1
    @bar = 2
  end
end

have_instance_val = HaveInstanceVal.new

p have_instance_val.instance_variables

have_instance_val.instance_variables.any? do |instance_val_name|
  instance_val_name =~ /fo/
end

have_instance_val.instance_variables.select do |instance_val_name|
  instance_val_name =~ /fo/
end


p have_instance_val.instance_variable_defined? :@foo
p have_instance_val.instance_variable_defined? :@buzz


p have_instance_val.instance_variable_get :@foo
p have_instance_val.instance_variable_get :@buzz

p have_instance_val.instance_variable_set :@foo, 2
p have_instance_val.instance_variable_get :@foo


class ParentClass
  def super_public_method; end

  private
  def super_private_method; end

  protected
  def super_protected_method; end
end

class ChildClass < ParentClass
  def public_method; end

  private
  def private_method; end

  protected
  def protected_method; end
end

child = ChildClass.new

def child.singleton_method; end

p child.methods
p child.public_methods
p child.private_methods
p child.protected_methods
p child.singleton_methods


class HaveMethod
  def has_method
    'has_method'
  end
end

class NotHaveMethod
end

have_method = HaveMethod.new
not_have_method = NotHaveMethod.new

p have_method.respond_to? :has_method
p not_have_method.respond_to? :has_method


class Hello
  def hi
    'hi'
  end

  def hello(name)
    "hello #{name}"
  end
end

hello = Hello.new
p hello.send :hi
p hello.send :hello, "takkanm"
p hello.__send__ :hello, "takkanm"


class ClassVariables
  @@class_variable = :class_variable

  def define_lazy_class_variable
    @@lazy_class_variable = :lazy_class_variable
  end
end

p ClassVariables.class_variables

p ClassVariables.new.define_lazy_class_variable

p ClassVariables.class_variables

p ClassVariables.class_variable_defined? '@@class_variable'
p ClassVariables.class_variable_defined? '@@undefined_class_variable'

p ClassVariables.class_variable_get '@@class_variable'
ClassVariables.class_variable_set '@@undefined_class_variable', :defined
p ClassVariables.class_variable_get '@@undefined_class_variable'


module IncludeModule
  MODULE_CONST_VAR = 1
end

class ConstantsClass
  include IncludeModule

  CLASS_CONST_VAR = 1

  class InnerClass
    INNER_CLASS_CONST_VAR = 1
  end
end

p ConstantsClass.constants


