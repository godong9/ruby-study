module IncludedCount
  class << self
    def included(klass)
      @included ||= []
      @included << klass
    end

    def included_module_and_class
      @included
    end

    def included_count
      @included ? @included.count : 0
    end
  end
end

IncludedCount.included_count

class IncludeClass1
  include IncludedCount
end

class IncludeClass2
  include IncludedCount
end

class IncludeClass3
  include IncludedCount
end

p IncludedCount.included_count
p IncludedCount.included_module_and_class


module ExtendedCount
  class << self
    def extended(obj)
      @extended ||= []
      @extended << obj
    end

    def extended_objects
      @extended
    end

    def extended_count
      @extended ? @extended.count : 0
    end
  end
end

ExtendedCount.extended_count

5.times do
  Object.new.extend ExtendedCount
end

p ExtendedCount.extended_count


class SuperClass
  class << self
    def inherited(subclass)
      @classes ||= []
      @classes << subclass
    end

    def subclasses
      @classes
    end
  end
end

p SuperClass.subclasses

class Sub1 < SuperClass; end
class Sub2 < SuperClass; end
class Sub3 < SuperClass; end

p SuperClass.subclasses

puts "=============="

class AddedMethodClass
  def before_added_method; end

  class << self
    private
    def method_added(method_name)
      puts "method Added: #{method_name}"
    end
  end

  def after_added_method; end
  define_method :add_form_define_method, -> (){}
end

AddedMethodClass.class_eval do
  def add_from_class_eval; end
end






