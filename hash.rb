array = [1, 2]

p array.hash
p array.reverse!
p array.hash

hash = {one: 1, two: 2}

hash.each do |key, val|
  puts "#{key}: #{val}"
end

hash.each_key do |key|
  puts key
end

hash.each_value do |val|
  puts val
end


hash = {}
hash[:foo] = 'bar'
hash[:hoge] = 'piyo'

p hash


hash = {foo: 'bar'}

hash.delete(:foo)
p hash


hash = {foo: 1, bar: 2, baz: 3}

hash.select! {|key, val| val.odd?}
p hash

hash = {foo: 1, bar: 2, baz: 3}

hash.reject! {|key, val| val.odd?}
p hash


hash = {foo: 1, bar: 2, baz: 3}

p hash.keep_if {|key, val| true}
p hash.delete_if {|key, val| false}


hash = {foo: 1, bar: 2, baz: 3}

p hash.select {|key, val| val.odd?}
p hash.reject {|key, val| val.odd?}


a = {one: 'A', two: nil}
b = {two: 'B', three: 'C'}

p a.merge(b)


def keywords(hash = {})
  defaults = {alice: '앨리스', bob: '밥'}
  hash = defaults.merge(hash)

  hash
end

p keywords bob: '밥'


hash = {one: 'A'}

hash.merge! two: 'B'
p hash

a = {one: 1, two: 2}.invert
p a
b = {foo: 1, bar: 1}.invert
p b


hash = {foo: nil}

p hash[:unknown]
p hash[:foo]

p hash.has_key?(:unknown)
p hash.has_key?(:foo)

p hash.key?(:foo)
p hash.member?(:foo)
p hash.include?(:foo)


hash = {foo: 'bar'}

p hash.has_value?('bar')
p hash.has_value?('baz')

p hash.value?('bar')


h = {one: 'A', two: 'B', three: 'C'}
p h.keys


h = {one: 'A', two: 'B', three: 'C'}
p h.key('B')

p h.values
p h.values_at(:three, :two)

three, two = h.values_at(:three, :two)

p two
p three


has_default = Hash.new('undefined')
p has_default['foo']

has_default = Hash.new('naive')
value = has_default['foo']

p value

value.reverse!

p has_default['foo']


has_default = Hash.new{|hash, key| Time.now}

p has_default['foo']
#sleep 1
p has_default['foo']


has_default = {}

p has_default['foo']
has_default.default = 'bar'
p has_default['foo']


hash = {}

hash.fetch('foo', 'default')
hash.fetch('foo') {|key| key}
#hash.fetch('foo')


a = {one: 1, two: 2}.to_a
p a

p a.assoc(:one)


ary = ['key1', 'one', 'key2', 'two']
p Hash[*ary]

ary = [['key1', 'one'], ['key2', 'two']]
p Hash[ary]


