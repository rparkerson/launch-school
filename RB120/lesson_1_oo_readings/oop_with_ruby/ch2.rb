class GoodDog
  def initialize
    puts "This object was initialized!"
  end
end

sparky = GoodDog.new

class GoodDog
  def initialize(name)
    @name = name
  end
end

sparky = GoodDog.new("Sparky")
p sparky

class GoodDog
  def initialize(name)
    @name = name
  end

  def speak
    "Arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak

fido = GoodDog.new("Fido")
puts fido.speak

class GoodDog
  def initialize(name)
    @name = name
  end
  
  def get_name
    @name
  end

  def set_name=(name)
    @name = name
  end

  def speak
    "#{@name} says Arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak

fido = GoodDog.new("Fido")
puts fido.speak

puts sparky.get_name
sparky.set_name = "Spartacus"
puts sparky.get_name

class GoodDog
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def name=(n)
    @name = n
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name
sparky.name = "Spartacus"
puts sparky.name

class GoodDog
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name
sparky.name = "Spartacus"
puts sparky.name

class GoodDog
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    name = ("S-dawg")
    "#{name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
p sparky
puts sparky.name
sparky.name = "Spartacus"
puts sparky.name

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def some_method
    self.info
  end
end

sparky = GoodDog.new('Sparky', '12 inches', '10 lbs')
puts sparky.info
puts sparky.speak
sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info
puts sparky.some_method

class MyCar
  attr_accessor :speed, :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end
  
  def speed_up(mph)
    self.speed += mph
    puts "You push the gas and accelerate #{mph} mph."
  end

  def brake(mph)
    if speed - mph >= 0
      self.speed -= mph
    else
      self.speed = 0
    end
    puts "You push the brake and decelerate #{mph} mph."
  end

  def current_speed
    puts "You are now going #{speed} mph."
  end

  def shut_down
    puts "You turn the key and the car shuts off."
    self.speed = 0
  end

  def spray_paint=(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end
end

lumina = MyCar.new(1997, 'white', 'chevy lumina')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
lumina.current_speed
puts lumina.color
lumina.color = 'black'
puts lumina.color
puts lumina.year
lumina.spray_paint = 'red'
puts lumina.color
