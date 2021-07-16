=begin
Hello, Sophie! (Part 2)

Using the code from the previous exercise, move the greeting from the
#initialize method to an instance method named #greet that prints a greeting
when invoked.

Code:

class Cat
  def initialize(name)
    @name = name
    puts "Hello! My name is #{@name}!"
  end
end

kitty = Cat.new('Sophie')

Expected output:

Hello! My name is Sophie!
=end

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

  def greet
    puts "Hello! My name is #{@name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
