=begin
Reader

Using the code from the previous exercise, add a getter method named #name
and invoke it in place of @name in #greet.

Code:

class Cat
  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{@name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet

Expected output:

Hello! My name is Sophie!
=end

# Preferred use of getter method
class Cat
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet

class Cat
  def initialize(n)
    @name = n
  end

  def name
    @name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
