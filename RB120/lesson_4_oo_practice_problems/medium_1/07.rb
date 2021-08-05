=begin
Question 7

How could you change the method name below so that the method name is more
clear and less repetitive?

class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def light_status
    "I have a brightness level of #{brightness} and a color of #{color}"
  end

end

This method can be shorted to `status` so it reads well when it is invoked
and is less repetitive and more clear. Names should be consistant, easy to
remember, descriptive of what is happening, but also (to this questions point)
read well and logically when called.

Provided solution:
Currently the method is defined as light_status, which seems reasonable.
But when using or invoking the method, we would call it like this:
my_light.light_status. Having the word "light" appear twice is redundant. 
Therefore, we can rename the method to just status, and we can invoke it like
as my_light.status. This reads much better -- remember, you're writing code
to be readable by others as well as your future self.
=end


class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def status
    "I have a brightness level of #{brightness} and a color of #{color}"
  end
end

my_light = Light.new('blinding', 'white')
puts my_light.status
