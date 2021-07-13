class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
end

class Cat < Animal
end

sparky = GoodDog.new
paws = Cat.new
puts sparky.speak
puts paws.speak

class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def speak
    "#{self.name} says arf!"
  end
end

class Cat < Animal
end

sparky = GoodDog.new("Sparky")
paws = Cat.new

puts sparky.speak
puts paws.speak

class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  def speak
    super + " from GoodDog class"
  end
end

sparky = GoodDog.new("Sparky")
p sparky.speak
p GoodDog.ancestors

class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog < Animal
  def initialize(color)
    super
    @color = color
  end
end

bruno = GoodDog.new("brown")
p bruno  # #<GoodDog:0x0000560cdad8e1d0 @name="brown", @color="brown">

class BadDog < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end
end

p BadDog.new(2, "bear")  # super is given a specific single argument

class Animal
  def initialize
  end
end

class Bear < Animal
  def initialize(color)
    super()  # an exception will be raised if super is used without ()
    @color = color
  end
end

bear = Bear.new("black")
p bear

module Swimmable
  def swim
    "I'm swimming!"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable  # mixing in Swimmable module
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable  # mixing in Swimmable module
end

sparky = Dog.new
neemo = Fish.new
paws = Cat.new

p sparky.swim
p neemo.swim
# p paws.swim  # NoMethodError undefined method swim

module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming"
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

class GoodDog < Animal
  include Swimmable
  include Climbable
end

puts "---Animal method lookup---"
puts Animal.ancestors

fido = Animal.new
p fido.speak
p fido.walk
# p fido.swim  # undefined method swim

puts "---GoodDog method lookup---"
puts GoodDog.ancestors

module Mammal; class Dog; end; end

module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end
end

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new
buddy.speak('Arf!')
kitty.say_name('kitty')

module Mammal
  # ...

  def self.some_out_of_place_method(num)
    num ** 2
  end
end

value = Mammal.some_out_of_place_method(4)  # preferred syntax
value = Mammal::some_out_of_place_method(4)

class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  def public_disclosure
    "#{self.name} in human years is #{human_years}"
  end

  private

  def human_years
    age * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
# sparky.human_years  # Not accessible - raises an exception NoMethodError
p sparky.public_disclosure

class Animal
  def a_public_method
    "Will this work? " + self.a_protected_method
  end

  protected

  def a_protected_method
    "Yes, I'm protected!"
  end
end

fido = Animal.new
p fido.a_public_method
# p fido.a_protected_method # raises exception

class Parent
  def say_hi
    p "Hi from Parent."
  end
end

p Parent.superclass  # => Object

class Child < Parent
  def say_hi
    p "Hi from Child."
  end
end

child = Child.new
child.say_hi        # => "Hi from Child."

son = Child.new
son.send :say_hi    # => "Hi from Child."

class Child
  def say_hi
    p "Hi from Child."
  end

  def send
    p "send from Child..."
  end
end

lad = Child.new
# lad.send :say_hi  # ArgumentError

c = Child.new
p c.instance_of? Child   # true
p c.instance_of? Parent  # false

class Child
  def instance_of?
    "I'm a fake instance"
  end
end

heir = Child.new
# p heir.instance_of? Child  # ArgumentError

module Test
  def self.hello
    puts "I say hello!"
  end
end

Test.hello

class Person

  def public_hi
    "#{self.hi}"
  end

  private

  def hi
    puts "hi"
  end
end

person = Person.new
p person
person.public_hi

module OffRoadable
  def off_road
    puts "You activate all wheel drive!"
  end
end

class Vehicle
  attr_accessor :color, :model
  attr_reader :year

  @@number_of_vehicles = 0

  def initialize(y, c, m)
    @year = y
    self.color = c
    self.model = m
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def self.display_number_of_vehicles
    puts "There are #{@@number_of_vehicles} vehicles."
  end

  def speed_up(mph)
    @current_speed += mph
    puts "You press the gas and speed up #{mph} mph."
  end

  def brake(mph)
    (@current_speed - mph) >= 0 ? @current_speed -= mph : @current_speed = 0
    puts "You press the brake and slow down #{mph} mph."
  end

  def current_speed
    puts "You are going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "You stop and turn off the vehicle."
  end

   def spray_paint(color)
    self.color = color
    puts "You change the color of your vehicle to #{color}!"
  end

  def self.display_gas_mileage(miles, gallons)
    puts "Your gas mileage is #{miles/gallons} miles per gallon of gas."
  end

  def to_s
    "My vehicle is a #{self.color}, #{self.year}, #{self.model}!"
  end

  def age
    puts "The age of your #{self.model} is #{calculate_age} years old."
  end

  private

  def calculate_age
    Time.new.year - self.year
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  include OffRoadable

  NUMBER_OF_DOORS = 2
end

corolla = MyCar.new(2021, "black", "Corolla")
corolla.speed_up(20)
corolla.current_speed
corolla.speed_up(20)
corolla.current_speed
corolla.brake(20)
corolla.current_speed
corolla.brake(20)
corolla.current_speed
corolla.shut_down
corolla.current_speed
p corolla
corolla.spray_paint('silver')
puts corolla.color
puts corolla.year
Vehicle.display_gas_mileage(450, 13)
p corolla.to_s
puts corolla
tacoma = MyTruck.new(2021, 'blue', "Tacoma")
puts tacoma
Vehicle.display_number_of_vehicles
tacoma.off_road
puts Vehicle.ancestors
puts '---'
puts MyCar.ancestors
puts '---'
puts MyTruck.ancestors
puts '---'
corolla.age
tacoma.age

=begin
Create a class 'Student' with attributes name and grade. Do NOT make the grade
getter public, so joe.grade will raise an error. Create a better_grade_than?
method, that you can call like so...
=end

class Student
  attr_accessor :name
  attr_writer :grade

  def initialize(n, g)
    self.name = n
    self.grade = g
  end

  def better_grade_than?(name)
    self.grade > name.grade
  end

  protected

  attr_reader :grade
end

joe = Student.new("Joe", 100)
bob = Student.new("Bob", 80)
p joe
p bob
puts "Well done!" if joe.better_grade_than?(bob)

class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 93)
bob = Student.new("Bob", 78)
puts "Well done!" if joe.better_grade_than?(bob)

=begin
Given the following code...

bob = Person.new
bob.hi

And the corresponding error message...

NoMethodError: private method `hi' called for #<Person:0x007ff61dbb79f0>
from (irb):8
from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

What is the problem and how would you go about fixing it?

The hi method that the instance of the Person class object referenced by
the local variable bob is calling is private. To fix this we could change
hi to a public method or create a different public method that can call
the hi method within the class where it is accessible. 
For example:
=end

class Person
  def public_hi
    hi
  end

  private # can also remove private permission or move the hi method above it

  def hi
    puts "You say 'hi'!"
  end
end

bob = Person.new
bob.public_hi
