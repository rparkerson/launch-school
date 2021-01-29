# class Animal
#   def speak
#     "Hello!"
#   end
# end

# class GoodDog < Animal
#   attr_accessor :name

#   def initialize(n)
#     self.name = n
#   end

#   def speak
#     "#{self.name} says arf!"
#   end
# end

# class Cat < Animal
# end

# sparky = GoodDog.new("Sparky")
# paws = Cat.new

# puts sparky.speak
# puts paws.speak
# puts GoodDog.ancestors

# super
# class Animal
#   def speak
#     "Hello!"
#   end
# end

# class GoodDog < Animal
#   def speak
#     super + " from GoodDog class"
#   end
# end

# sparky = GoodDog.new
# p sparky.speak         # => "Hello! from GoodDog class"

# super with initialize
class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog < Animal
  attr_reader :color
  def initialize(color)
    super
    @color = color
  end
end

bear = Animal.new("Yogi")
bruno = GoodDog.new("brown")
p bruno.color
p bruno