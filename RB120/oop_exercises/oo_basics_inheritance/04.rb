=begin
Start the Engine (Part 2)

Given the following code, modify #start_engine in Truck by appending
'Drive fast, please!' to the return value of #start_engine in Vehicle.
The 'fast' in 'Drive fast, please!' should be the value of speed.

class Vehicle
  def start_engine
    'Ready to go!'
  end
end

class Truck < Vehicle
  def start_engine(speed)
  end
end

truck1 = Truck.new
puts truck1.start_engine('fast')

Expected output:

Ready to go! Drive fast, please!
=end

class Vehicle
  def start_engine
    'Ready to go!'
  end
end

class Truck < Vehicle
  def start_engine(speed)
    super() << " Drive #{speed}, please!"
  end
end

truck1 = Truck.new
puts truck1.start_engine('fast')

# Alt with previous exercises methods
class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end

  def start_engine()
    'Ready to go!'
  end
end

class Truck < Vehicle
  attr_reader :bed_type

  def initialize(year, bed_type)
    super(year)
    @bed_type = bed_type
  end

  def start_engine(speed)
    
    "#{super()} Drive #{speed}, please!"
  end
end

truck1 = Truck.new(1994, 'Short')
puts truck1.start_engine('fast')
