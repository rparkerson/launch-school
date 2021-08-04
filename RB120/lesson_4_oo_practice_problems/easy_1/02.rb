=begin
Question 2

If we have a Car class and a Truck class and we want to be able to go_fast,
how can we add the ability for them to go_fast using the module Speed?
How can you check if your Car or Truck can now go fast?

We can mix in the `Speed` module with the include keyword which will allow the
classes to access the go_fast instance method. We can test this by instantiating
Car and Truck objects and calling the go_fast instance method with the objects.
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

class Truck
  include Speed

  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

car1 = Car.new
car1.go_slow
car1.go_fast

truck1 = Truck.new
truck1.go_very_slow
truck1.go_fast

