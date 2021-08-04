=begin
Question 3

How do you find where Ruby will look for a method when that method is called?
How can you find an object's ancestors?

module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

What is the lookup chain for Orange and HotSauce?

You can use the method lookup path to determine where Ruby will look for a method
that is being called by an instance of that class. This can be done with
the `ancestors` class method. 

The lookup chain for Orange is [Orange, Taste, Object, Kernel, BasicObject]
The lookup chain for Hotsauce is [HotSauce, Taste, Object, Kernel, BasicObject]
=end

module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

p Orange.ancestors # [Orange, Taste, Object, Kernel, BasicObject]
p HotSauce.ancestors # [HotSauce, Taste, Object, Kernel, BasicObject]
