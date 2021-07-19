=begin
Reading and Writing

Add the appropriate accessor methods to the following code.

class Person
end

person1 = Person.new
person1.name = 'Jessica'
puts person1.name

Expected output:

Jessica
=end

class Person
  attr_accessor :name
end

person1 = Person.new
person1.name = 'Jessica'
puts person1.name

# Provided solution
class Person
  attr_writer :name
  attr_reader :name
end

person1 = Person.new
person1.name = 'Jessica'
puts person1.name

# Student Solution
Person = Struct.new(:name)

person1 = Person.new
person1.name = 'Jessica'
puts person1.name
