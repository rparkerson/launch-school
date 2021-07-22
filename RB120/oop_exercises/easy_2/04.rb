=begin
Reverse Engineering

Write a class that will display:

ABC
xyz

when the following code is run:

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')
=end

class Transform
  def initialize(name)
    @name = name
  end

  def uppercase
    @name.upcase
  end

  def self.lowercase(name)
    name.downcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase             # ABC
puts Transform.lowercase('XYZ')    # xyz

# Provided solution with different variable names
class Transform
  def initialize(data)
    @data = data
  end

  def uppercase
    @data.upcase
  end

  def self.lowercase(str)
    str.downcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase             # ABC
puts Transform.lowercase('XYZ')    # xyz

# Student solution (uses String class initialize to create a string)
class Transform < String
  def uppercase
    self.upcase # references the string object stored in `my_data`
  end

  def self.lowercase(string)
    string.downcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase             # ABC  my_data.upcase would work here also
puts Transform.lowercase('XYZ')    # xyz

