
class QuotableString < String
  def quote
    "'#{self}'"
  end
end

quotable_string = QuotableString.new 'quotable_string'
p quotable_string.quote


class Numeric

end

class Numeric
  def steps
    return [] if self <= 0

    0.upto(self).to_a
  end
end

p 10.steps


class DelegateArray
  def initialize
    @array = []
  end
end

def method_missing(name, *args)
  @array.__send__ name, *args
end


delegate_array = DelegateArray.new
p delegate_array << 1


class OverrideMethodMissing
  def method_missing(method_name, *args)
    if method_name == :target_method
      return 'target_method is called'
    end

    super
  end
end


