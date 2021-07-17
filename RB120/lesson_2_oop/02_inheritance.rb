class Dog
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end
end

class Bulldog < Dog
  def swim
    "can't swim!"
  end
end

teddy = Dog.new
puts teddy.speak
puts teddy.swim

karl = Bulldog.new
puts karl.speak
puts karl.swim

class Pet
  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end

class Dog < Pet
  def speak
    'bark!'
  end

  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end
end

class Bulldog < Dog
  def swim
    "can't swim!"
  end
end

class Cat < Pet
  def speak
    'meow!'
  end
end

pete = Pet.new
kitty = Cat.new
dave = Dog.new
bud = Bulldog.new

puts pete.run
# puts pet.speak Name.error

puts kitty.run               # => "running!"
puts kitty.speak             # => "meow!"
# puts kitty.fetch             # => NoMethodError

puts dave.speak              # => "bark!"

puts bud.run                 # => "running!"
# puts bud.swim                # => "can't swim!"
p Bulldog.ancestors  # => [Bulldog, Dog, Pet, Object, Kernel, BasicObject]

=begin
Class hierarchy diagram
Pet - run, jump
  Pet -> Dog - speak, swim, fetch
    Dog -> Bulldog - swim
  Pet -> Cat - speak

What is the method lookup path and how is it important?
The method lookup path is the order in which Ruby inspects classes or modules
for a method to call. This determines where the method is called from.
=end
