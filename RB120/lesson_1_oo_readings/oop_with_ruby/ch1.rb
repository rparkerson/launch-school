# good_dog.rb

class GoodDog
end

sparky = GoodDog.new
p sparky.object_id

module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

sparky = GoodDog.new
sparky.speak("Arf!")
bob = HumanBeing.new
bob.speak("Hello!")

module Speak
  def speak(sound)
    puts "#{sound}"
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

puts "---GoodDog ancestors---"
puts GoodDog.ancestors
puts
puts "---HumanBeing ancestors---"
puts HumanBeing.ancestors

=begin
How do we create an object in Ruby?
Give an example of the creation of an object.
We can create an object by calling the class method #new on the class name.
e.g. sparky = GoodDog.new
We create a class and instantiate an instance of the class (also called
an object) by calling new on the class name
class MyClass
end
my_obj = MyClass.new
=end

=begin
What is a module? What is its purpose? How do we use them with our classes?
Create a module for the class you created in exercise 1 and include it
properly.

A module is a collection of methods but it can not instantiate new objects. It
is used as a "mix-in" to share its methods with serveral different classes.
This can be done by using #include method e.g. include ModuleName in the class 
definition. Modules are also used as a namespace
module MyModule
  def method(param)
    puts param
  end
end

class MyClass
  include MyModule
end

my_obj = MyClass.new
=end
