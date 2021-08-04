=begin
Question 5

Which of these two classes has an instance variable and how do you know?

class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

Instance variables use a @ symbol in front of the variable name so @name
is an instance variable.  It is accessible within instances of classes as part
of an object's state.
=end

class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

pie = Pizza.new('pie') # `@name` is an instance variable created within the
# scope of the `Pizza` object referenced by `pie`
p pie.instance_variables

pear = Fruit.new('pear') # `name` is a local variable within the initialize method
p pear.instance_variables
