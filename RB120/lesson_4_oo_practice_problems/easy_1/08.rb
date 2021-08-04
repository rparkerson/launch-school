=begin
Question 8

If we have a class such as the one below:

class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1
  end
end

You can see in the make_one_year_older method we have used self. 
What does self refer to here?

The self is refering to the instance object of Cat that is calling the 
`make_one_year_older` method. That instance is then referring the setter
method to increment the instance variable `@age` by 1
=end

class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1
  end
end
