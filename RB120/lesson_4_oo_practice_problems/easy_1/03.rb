=begin
Question 3

In the last question we had a module called Speed which contained a go_fast
method. We included this module in the Car class as shown below.

module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed
  def go_slow
    puts "I am safe and driving slow."
  end
end

When we called the go_fast method from an instance of the Car class (as shown
below) you might have noticed that the string printed when we go fast includes
the name of the type of vehicle we are using. How is this done?

>> small_car = Car.new
>> small_car.go_fast
I am a Car and going super fast!

`self` refers to the object, either a Car or Truck object in this case.
The calling object can be referenced by self and then the `class` method was
called on self which refered the class and that was converted to a string
using string interpolation within the string object that was output with `puts`.

=end

module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed
  def go_slow
    puts "I am safe and driving slow."
  end
end

small_car = Car.new
small_car.go_fast
# I am a Car and going super fast!
