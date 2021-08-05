=begin
If we have a class such as the one below:

class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

Explain what the @@cats_count variable does and how it works.
What code would you need to write to test your theory?

The `@@cats_count` variable is initialized to 0 with the Cat class and
each time an instance is initilized the class variable is incremented by
1. There is a class getter method, `self.cats_count`, that can access this
value.
=end

class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

p Cat.cats_count # 0

Cat.new('feral')
p Cat.cats_count # 1

Cat.new('fat')
p Cat.cats_count # 2
