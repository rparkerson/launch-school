class GoodDog
  def initialize(name)
    @name = name
  end

  def self.what_am_i           # Class method defintition
    "I'm a GoodDog class!"
  end
end

puts GoodDog.what_am_i

----------

class GoodDog
  @@number_of_dogs = 0

  def initialize
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs      # => 0

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs

# ----------

class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    @name = n
    @age  = a * DOG_YEARS
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky.age
puts sparky
p sparky.to_s
p sparky
puts sparky.inspect
