# Refactoring Vehicles
# Refactor these classes so they all use a common superclass, and inherit
# behavior as needed.

# Consider the following classes:

class Vehicle
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def to_s
    "#{make} #{model}"
  end
end

class Car < Vehicle
  def wheels
    4
  end
end

class Motorcycle < Vehicle
  def wheels
    2
  end
end

class Truck < Vehicle
  attr_reader :payload

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end

  def wheels
    6
  end
end

car1 = Car.new('Ford', 'Focus')
puts car1

moto1 = Motorcycle.new('Kawasaki', 'Ninja')
puts moto1

truck1 = Truck.new('Ford', 'Ranger', '2 tons')
puts truck1

=begin
Further Exploration
Would it make sense to define a wheels method in Vehicle even though all of
the remaining classes would be overriding it? Why or why not? If you think it
does make sense, what method body would you write?

I do not think it makes sense to create a class that is not generic like
wheels in the Vehicle class. If most vehicles had 4 wheels that could be
created, and can then overide. It does not seem like something should be
overridden without a reason to.
=end
