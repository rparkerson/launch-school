=begin
class House
  attr_reader :price

  def initialize(price)
    @price = price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1

and this output:

Home 1 is cheaper
Home 2 is more expensive

Modify the House class so that the above program will work.
You are permitted to define only one new method in House.

Further Exploration

Is the technique we employ here to make House objects comparable a good one?
(Hint: is there a natural way to compare Houses? Is price the only criteria
you might use?) 
What problems might you run into, if any?
Can you think of any sort of classes where including Comparable is a good idea?

This technique seems like a poor one since you could compare the price
instance variables themselves and you may need to compare other values. It
might be a good idea to include comparable when you are dealing with only one
specific type of data like only integers. Or objects that can be ordered
somehow like integers and strings.
=end

class House
  attr_reader :price
  include Comparable

  def initialize(price)
    @price = price
  end

  def <=>(other)
    self.price <=> other.price
  end
end

home1 = House.new(100_000)
home2 = House.new(150_000)
puts "Home 1 is cheaper" if home1 < home2
puts "Home 2 is more expensive" if home2 > home1

# Home 1 is cheaper
# Home 2 is more expensive
