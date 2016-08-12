Human = Struct.new(:age, :gender)

human = Human.new(10, 'male')
p human.age
p human.gender

p human[:age]

p Human.members
p human.members

