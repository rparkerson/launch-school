=begin
Diamonds!
Write a method that displays a 4-pointed diamond in an n x n grid, where n
is an odd integer that is supplied as an argument to the method. You may
assume that the argument will always be an odd integer.

Examples

diamond(1)

*

diamond(3)

 *
***
 *

diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

P
input: integer (n - odd integer)
output: string (multi-line string of * character in the shape of a diamond)
rules
explicit:
write a method
display a 4-pointed diamond in a n x n grid
assume the argument will always be an odd integer
the middle line will be n * accross
the lines down will be n lines down
implicit:
n as 1 is a single character *
the middle line is left margin alligned
the other lines are centered to the middle line length
question:
should the method take negative integers? no - negative grids wouldn't apply

E
diamond(1)

*

diamond(3)

 *
***
 *

diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

D
strings

A
- print a blank line at the start
- Print n line
- all lines should be centered over n character length
- count up from 1 to n with odd numbers
- then count down to 1 with odd characters

=end

def diamond(n)
  n.times do |num|
    puts ('*' * (num + 1)).center(n) if num.even?
  end
  (n - 1).downto(1) do |num|
    puts ('*' * num ).center(n) if num.odd?
  end
end

diamond(1)

# *

diamond(3)

#  *
# ***
#  *

diamond(9)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *

def diamond(n)
  1.upto(n) { |num| puts ('*' * num ).center(n) if num.odd? }
  (n - 1).downto(1) { |num| puts ('*' * num ).center(n) if num.odd? }
end

diamond(1)
diamond(3)
diamond(9)

# with helper method
def print_row(grid_size, stars_num)
  puts ('*' * stars_num).center(grid_size) if stars_num.odd?
end

def diamond(grid_size)
  1.upto(grid_size) { |stars_num| print_row(grid_size, stars_num) }
  (grid_size - 1).downto(1) { |stars_num| print_row(grid_size, stars_num) }
end

diamond(1)
diamond(3)
diamond(9)

# Further Exploration - Modify solution to print only the outline
# ('*' * stars_num)
def star_pattern(stars_num)
  stars_num == 1 ? '*' : "*#{' ' * (stars_num - 2)}*"
end

def print_row(grid_size, stars_num)
  puts star_pattern(stars_num).center(grid_size) if stars_num.odd?
end

def diamond(grid_size)
  1.upto(grid_size) { |stars_num| print_row(grid_size, stars_num) }
  (grid_size - 1).downto(1) { |stars_num| print_row(grid_size, stars_num) }
end

diamond(1)
diamond(3)
diamond(9)
diamond(5)

#   *
#  * *
# *   *
#  * *
#   *
def pattern(num)
  num == 1 ? '*' : "*#{' ' * (num - 2)}*"
end

def print_row(n, num)
  puts pattern(num).center(n) if num.odd?
end

def diamond(n)
  1.upto(n) { |num| print_row(n, num) }
  (n - 1).downto(1) { |num| print_row(n, num) }
end

diamond(1)
diamond(3)
diamond(9)
diamond(5)

# Provided Solution:
def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end
