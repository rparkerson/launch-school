# Transportation

# Create a module named Transportation that contains three classes:
# Vehicle, Truck, and Car. Truck and Car should both inherit from Vehicle.

module Transportation
  class Vehicle
  end

  class Truck < Vehicle
  end

  class Car < Vehicle
  end
end

truck1 = Transportation::Truck.new

# student example
module Transportation
  Vehicle = Class.new
  Truck   = Class.new(Vehicle)
  Car     = Class.new(Vehicle)
end

# other student example
module Transportation
  Vehicle = Class.new
  %w(Truck Car).each { |vehicle| eval("#{vehicle} = Class.new(Vehicle)") } 
end

truck1 = Transportation::Truck.new
p truck1
