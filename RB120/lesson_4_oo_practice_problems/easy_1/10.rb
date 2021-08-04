=begin
Question 10

If we have the class below, what would you need to call to create a new
instance of this class.

I would need to call `new` on the `Bag` class and pass in 2 arguments for
`color` and `material` parameters.
=end

class Bag
  def initialize(color, material)
    @color = color
    @material = material
  end
end

bag1 = Bag.new('blue', 'suede')
