array = [1, '2', [3], Time.now]

m = Marshal.dump(array)

p Marshal.load(m)


p Marshal::MAJOR_VERSION
p Marshal::MINOR_VERSION


class Something
  attr_accessor :source, :temporary

  def marshal_dump
    source
  end

  def marshal_load(s)
    self.source = s
  end
end

origin = Something.new
origin.source = 'necessary'
origin.temporary = 'drop me'

data = Marshal.dump(origin)

restored = Marshal.load(data)
p restored.source
p restored.temporary
