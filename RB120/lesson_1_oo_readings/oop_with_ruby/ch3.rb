class GoodDog
  def self.what_am_i # def GoodDog.what_am_i
    "I'm a GoodDog(#{self}) class!"
  end
end

puts GoodDog.what_am_i

class GoodDog
  @@number_of_dogs = 0

  def initialize
    @@number_of_dogs += 1
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs

class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky.age
puts sparky.to_s

class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
  end

  def to_s
    "The dog's name is #{name} and it is #{age} in dog years."
  end
end

sparky = GoodDog.new("Sparky", 4)
puts sparky
p sparky

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end
end

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
puts sparky.info
puts sparky.what_is_self

class MyAwesomeClass
  def self.this_is_a_class_method
  end
end

class GoodDog
  puts self
end

GoodDog

# Problem:
# Add a class method that calculates the gas mileage of any car

class MyCar
  attr_accessor :year, :color, :model, :current_speed

  def initialize(y, c, m)
    self.year = y
    self.color = c
    self.model = m
    self.current_speed = 0
  end

  def self.gas_mileage(gallons, miles)
    puts "Your current mpg is #{miles / gallons} miles per gallon of gas."
  end

  def display_current_speed
    puts "Your current speed is #{self.current_speed} mph."
  end

  def speed_up(mph)
    self.current_speed += mph
    puts "You press the gas pedal and accelerate #{mph} mph."
  end

  def brake(mph)
    self.current_speed -= mph
    puts "You press the brake and slow down #{mph} mph."
  end

  def turn_off
    self.current_speed = 0
    puts "You stop the vehicle and turn off the engine."
  end

  def spray_paint(new_color)
    self.color = new_color
    puts "Your #{self.model} has a new #{self.color} paint job."
  end

  def to_s
    "You have a #{self.year} #{self.color} #{self.model}!"
  end
end

suv = MyCar.new("2021", "goblin green", "Escalade")
p suv.current_speed
suv.display_current_speed
suv.spray_paint("neon orange")
MyCar.gas_mileage(20, 351)
puts suv
p suv.to_s

=begin
When running the following code...

class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"

We get the following error...

test.rb:9:in `<main>': undefined method `name=' for
  #<Person:0x007fef41838a28 @name="Steve"> (NoMethodError)

Why do we get this error and how do we fix it?
This code is trying to use the setter name= method which has not defined.
Only the getter method is defined with attr_reader. To fix this I would change
attr_reader to attr_accessor which allows access to both setter and getter
methods for name.

=end

class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
p bob
bob.name = "Bob"
p bob
