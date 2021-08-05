=begin
What is used in this class but doesn't add any value?

class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    return "I want to turn on the light with a brightness level of super high and a color of green"
  end

end

The self.information class method will not have access to the brightness and
color states saved as instance variables so it might be more useful to define
this as an instance method. Depending how this is implemented this might not
be the case.

he return statement is not needed since this would be implicit as the string
is the last line of the self.information method executed. The attr_accessor
is also not used here, but could have add potential value
=end

class Light
  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    "I want to turn on the light with a brightness level of super high and a color of green"
  end

end
