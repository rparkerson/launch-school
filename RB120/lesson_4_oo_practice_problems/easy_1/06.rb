=begin
Question 6

What could we add to the class below to access the instance variable @volume?

class Cube
  def initialize(volume)
    @volume = volume
  end
end

We could at a getter method. Ruby has a shortcut attr_reader to do this or a 
getter method could be explicitly created.  Instance methods access instance 
variables, so we can call the instance method on our new `Cube` instance object.
=end

class Cube
  attr_reader :volume

  def initialize(volume)
    @volume = volume
  end
end

cubert = Cube.new(512)
puts cubert.volume

class Cube
  def initialize(volume)
    @volume = volume
  end

  def volume
    @volume
  end
end

class Cube
  def initialize(volume)
    @volume = volume
  end
end

# Technically class variables can be accessed with the `instance_variable_get`
# get method from the superclass Object
over_9000 = Cube.new(9001)
p over_9000.instance_variable_get("@volume")
