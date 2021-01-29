class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
p bob.name
bob.name = "Bob"
p bob.name

# we have the attr_reader set up to access names (getter) but not for 
# assigning names(setter).  We can change this to do both with 
# attr_accessor
