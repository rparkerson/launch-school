=begin
Create the Object

Using the code from the previous exercise, create an instance of Cat and
assign it to a variable named kitty.

Code:
=end

class Cat
end

kitty = Cat.new
p kitty

kitty = Cat.allocate 
# creates a new instance without triggering the initialize method
