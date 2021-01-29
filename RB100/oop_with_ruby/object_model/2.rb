# What is a module? What is its purpose? 
# How do we use them with our classes? 
# Create a module for the class you created in exercise 1 and 
# include it properly.

# A module lets you access methods and functionality across multiple 
# classes. 
# Modules can be mixed in with the include method invocation - called a 
# mixin.  Modules are also used as a namespace to help organize code.

module Movement
  def move(action)
    puts action
  end
end

class Human
  include Movement
end

bert = Human.new

bert.move("Jump")

# example solution
module Swimmable
end

class Person
  include Swimmable
end

first_person = Person.new

module Careers         # module used as a namespace to help organize
  class Engineer
  end

  class Teacher
  end
end

first_job = Careers::Teacher.new
