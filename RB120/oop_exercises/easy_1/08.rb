=begin
Rectangles and Squares

Given the following class:

class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end

Write a class called Square that inherits from Rectangle, and is used like
this:

square = Square.new(5)
puts "area of square = #{square.area}"
=end

class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end

class Square < Rectangle
  def initialize(height, width = height)
    super
  end
end

square = Square.new(5)
puts "area of square = #{square.area}"

# Provided Solution
class Square < Rectangle
  def initialize(length_of_side)
    super(length_of_side, length_of_side)
  end
end


# Alt
class Square < Rectangle
  def initialize(length)
    @height, @width = length, length
  end
end

# Alt
class Square < Rectangle
  def initialize(side)
    @height = @width = side
  end
end
