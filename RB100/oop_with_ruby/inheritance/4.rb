module Offroadable
  def off_road
    puts "Activates all wheel drive to go off-roading!"
  end
end

class Vehicle
  @@instances = 0
  attr_accessor :year, :model, :color

  def initialize(year, model, color)
    self.year = year
    self.model = model
    self.color = color
    @@instances += 1
    current_speed = 0
  end
  
  def self.number_of_instances
    p "Vehicle class has created #{@@instances} instances."
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas pedal and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end
end

class MyCar < Vehicle
  AWD = false
  MILEAGE = 130_223

  def to_s
    "My car is a #{color} #{year} #{model}!"
  end
end

class MyTruck < Vehicle
  include Offroadable
  AWD = true
  MILEAGE = 4_401

  def to_s
    "My truck is a #{color} #{year} #{model}!"
  end
end


MyCar.gas_mileage(13, 351)
lumina = MyCar.new(1997, 'Lumina', 'Black')
puts lumina
silverado = MyTruck.new(2021, 'Silverado', 'Silver')
puts silverado
silverado.off_road

puts "---Vehicle method lookup---"
puts Vehicle.ancestors
puts "---MyCar method lookup---"
puts MyCar.ancestors
puts "---MyTruck method lookup---"
puts MyTruck.ancestors
