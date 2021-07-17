=begin
Generic Greeting (Part 1)

Modify the following code so that Hello! I'm a cat! is printed when
Cat.generic_greeting is invoked.

class Cat
end

Cat.generic_greeting

Expected output:

Hello! I'm a cat!
=end

# Preferred - easier to maintain code e.g. changing the class name
class Cat
  def self.generic_greeting
    puts "Hello! I'm a cat!"
  end
end

Cat.generic_greeting

class Cat
  def Cat.generic_greeting
    puts "Hello! I'm a cat!"
  end
end

Cat.generic_greeting
kitty = Cat.new
kitty.class.generic_greeting

=begin
Further Exploration:
What happens if you run kitty.class.generic_greeting?
Can you explain this result?
This is an example of method chaining. kitty.class returns
Cat which the class method ::generic_greeting is called on. 
That outputs the string "I'm a Cat" and returns `nil` since puts was used
in the method.
=end
