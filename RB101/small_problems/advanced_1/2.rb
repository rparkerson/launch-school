=begin
Seeing Stars
Write a method that displays an 8-pointed star in an nxn grid, where n is
an odd integer that is supplied as an argument to the method. The smallest
such star you need to handle is a 7x7 grid.

Examples

star(7)

*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *

star(9)

*   *   *
 *  *  *
  * * *
   ***
*********
   ***
  * * *
 *  *  *
*   *   *

P
input: integer (odd, at least 7)
output: print strings in a star pattern
explicit rules:
display a n x n grid
n will always be odd
n will always be at least 7

D
strings

A
- print a n x n grid
  - n number of lines
  - each line is n characters
- middle row is n *'s
- other lines are 3 stars - one on the left, center, and right aligned
with spaces as padding in between and 1 more space on the outsides

- count down to middle line
- display middle line
- count up to top line (bottom half is top half mirrored/inverted)
=end
def top_half(num)
  0.upto((num / 2) - 1) do |spaces|
    outside = ' ' * spaces
    inside = ' ' * (spaces - ((num / 2) - 1)).abs
    puts "#{outside}*#{inside}*#{inside}*#{outside}"
  end
end

def bottom_half(num)
  ((num / 2) - 1).downto(0) do |spaces|
    outside = ' ' * spaces
    inside = ' ' * (spaces - ((num / 2) - 1)).abs
    puts "#{outside}*#{inside}*#{inside}*#{outside}"
  end
end

def star(num)
  top_half(num)
  puts '*' * num
  bottom_half(num)
end

star(7)
=begin
*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *
=end
star(9)
=begin
*   *   *
 *  *  *
  * * *
   ***
*********
   ***
  * * *
 *  *  *
*   *   *
=end

# Provided Solution
def print_row(grid_size, distance_from_center)
  number_of_spaces = distance_from_center - 1
  spaces = ' ' * number_of_spaces
  output = Array.new(3, '*').join(spaces)
  puts output.center(grid_size)
end

def star(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(1) { |distance| print_row(grid_size, distance) }
  puts '*' * grid_size
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end
