=begin
Question 9

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

In the name of the cats_count method we have used self.
What does self refer to in this context?

This self is used to define a class method.  When defining methods within
the class the self refers to the class the definition is contained within. In
this case Cat so self.cats_count is like Cat.cats_count

Because this is a class method it represents the class itself, in this case Cat.
So you can call Cat.cats_count.
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
