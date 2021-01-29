# class GoodDog
#   def initialize(name)        # constructor
#     @name = name
#     p "This object was initialized!"
#   end

#   def name         # This was renamed from "get_name"
#     @name
#   end

#   def name=(n)  # This was renamed from "set_name="
#     @name = n
#   end

#   def speak
#     "#{@name} says Arf!"
#   end
# end



# sparky = GoodDog.new("Sparky")  # => "This object was initialized!""
# puts sparky.speak               # => Arf!

# fido = GoodDog.new("Fido")
# puts fido.speak

# puts sparky.name
# sparky.name = "Spartacus"
# puts sparky.name

# Refactored
class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak # can change this from @name by using attr_accessor to access
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
puts sparky.speak
puts sparky.info
sparky.change_info('Spartacus', '24 inches', '45 lbs')
puts sparky.info
p sparky.some_method
