=begin
Right Triangles
Write a method that takes a positive integer, n, as an argument, and displays
a right triangle whose sides each have n stars. The hypotenuse of the
triangle (the diagonal side in the images below) should have one end at
the lower-left of the triangle, and the other end at the upper-right.

Examples:

triangle(5)

    *
   **
  ***
 ****
*****

triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

P
input: integer (positive) n
output: print lines of strings using * to display a triangle(Christmas tree)
rules
explicit:
create a method takes 1 argument
display a right triangle
hypotenus starts on lower left to upper right
each side has n *'s
implicit:
first line prints nothing
strings are right alligned
questions:
Does anyone else see half a Christmas tree?

E
triangle(5)

    *
   **
  ***
 ****
*****
triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

D
strings

A
- print n number of lines
- right allign every line
- use n - line number for the padding of ' ' spaces
- last line contains n *'s

=end

def triangle(n)
  n.times { |num| puts "#{'*' * (num + 1)}".rjust(n) }
end

triangle(5)
triangle(9)

def triangle(n)
  stars = 1
  while stars <= n
    puts "#{' ' * (n - stars)}#{'*' * stars}"
    stars += 1
  end
end

triangle(5)
triangle(9)

def triangle(num)
  spaces = num - 1
  stars = 1

  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end

triangle(5)
triangle(9)

#  Further Exploration - display the right angle at any corner of grid
#  right angle at bottem right (previous solution)
def triangle(n)
  n.times { |num| puts "#{'*' * (num + 1)}".rjust(n) }
end

triangle(5)
triangle(9)

#  right angle at bottom left
def triangle(n)
  n.times { |num| puts "#{'*' * (num + 1)}".rjust(0) }
end

triangle(5)
triangle(9)

#  right angle at top left
def triangle(n)
  n.times { |num| puts "#{'*' * (n - num)}".rjust(0) }
end

triangle(5)
triangle(9)

#  right angle at top right
def triangle(n)
  n.times { |num| puts "#{'*' * (n - num)}".rjust(n) }
end

triangle(5)
triangle(9)

# All in one accepts 2 extra parameters
def triangle(n, upside_down, left_or_right)
  n.times do |num|
    count = upside_down ? (n - num) : (num + 1)
    side = left_or_right == 'left' ? 0 : n  # this will return n for everything but 'left'
    puts "#{'*' * count}".rjust(side)
  end
end

triangle(5, true, 'left')
triangle(5, true, 'right')
triangle(5, false, 'left')
triangle(5, false, 'right')
