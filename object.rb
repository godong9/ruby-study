o = Object.new

p o.class
p o.is_a?(Object)
p o.object_id
p o.nil?
p o.frozen?

o.tap {|v| puts v}

p Object.new == Object.new
p [1, 2, 3] == [1, 2, 3]
p 'Alice' == 'Alice'


class Ruler
  attr_accessor :length

  def initialize(length)
    self.length = length
  end

  def ==(other)
    length == other.length
  end
end

r1 = Ruler.new(30)
r2 = Ruler.new(30)

p r1 == r2

r2.length = 40

p r1 == r2

o = Object.new

o.freeze
p o.frozen?

#o.extend Enumerable

DEFAULT_SETTINGS = {host: 'localhost', port: 9292}.freeze


original = Object.new

p original.object_id
original.freeze


# dup, clone 모두 얕은 복사(shallow copy)
copy_dup = original.dup

p copy_dup.object_id
p copy_dup.frozen?

copy_clone = original.clone
p copy_clone.object_id
p copy_clone.frozen?

p $SAFE
