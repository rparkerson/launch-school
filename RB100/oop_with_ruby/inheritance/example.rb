# module example
module Swimmable
  def swim
    "I'm swimming!"
  end
end

class Animal
  def speak
    "I can be accessed as a superclass of a superclass"
  end
end

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
p sparky.swim
p sparky.speak
neemo = Fish.new
paws = Cat.new
p sparky.swim
p neemo.swim
p paws.swim

# test case for comparing initializing @name = name vs  self.name = name
# self.name is accessing the attr_accessor/writer while @name = name can
# set the instance variable without the accessor.
class NewGame

  def initialize(name)
    @name = name
  end

  def name
    @name
  end 

  def name=(name)
    @name = name
  end

  def speak
    p "Hello"
  end
end

zelda = NewGame.new("Zelda")
p zelda
zelda.speak
p zelda.name
p zelda.name=("Link")
p zelda.name

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
    "I'm climbing"
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

bear = Animal.new
p bear.speak

puts "---Animal method lookup---"
puts Animal.ancestors

fido = Animal.new
p fido.speak
p fido.walk

class GoodDog < Animal
  include Swimmable
  include Climbable
end

puts "--- GoodDog method lookup---"
puts GoodDog.ancestors

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

  def self.some_out_of_place_method(num)
    num ** 2
  end
end

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new
buddy.speak('Arf!')
kitty.say_name('kitty')

p value = Mammal.some_out_of_place_method(4)

p value = Mammal::some_out_of_place_method(4)

# example of private method accessed in another method def
class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age  = a
  end

  def public_disclosure
    "#{self.name} in human years is #{human_years}."
  end

  private

  def human_years
    age * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
p sparky.public_disclosure

# protected example
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

# class inheritence demo
class Parent
  def say_hi
    p "Hi from Parent."
  end
end

p Parent.superclass  # => Object
parent = Parent.new


class Child < Parent
  def say_hi
    p "Hi from Child."
  end

  def send
    p "send from Child..."
  end

  def instance_of?
    p "I am a fake instance"
  end
end

child = Child.new
child.say_hi

son = Child.new
son.send

c = Child.new
# p c.instance_of? Child   # => true
# p c.instance_of? Parent  # => false
c.instance_of?
