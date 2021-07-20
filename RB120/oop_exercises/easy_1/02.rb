# What output does this code print? Fix this class so that there are no
# surprises waiting in store for the unsuspecting developer.

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

name = 'Fluffy'
fluffy = Pet.new(name)
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

name = 42
fluffy = Pet.new(name)
name += 1
puts fluffy.name  # 42
puts fluffy       # My name is 42.
puts fluffy.name  # 42
puts name         # 43

=begin
Further Exploration
What would happen in this case?
This code "works" because of that mysterious to_s call in Pet#initialize.
However, that doesn't explain why this code produces the result it does.
Can you?

The name argument passed in to the Pet class instantiation produces an
instance with the local variable name set to to the string 42. The to_s
method call witch calls upcase on the string 42 which does not change number
characters. Finally the local variable name is output which was incremented
and reassigned to 43.
=end
