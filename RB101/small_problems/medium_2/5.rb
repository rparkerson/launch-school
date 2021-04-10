=begin
Triangle Sides
A triangle is classified as follows:

    equilateral All 3 sides are of equal length
    isosceles 2 sides are of equal length, while the 3rd is different
    scalene All 3 sides are of different length

To be a valid triangle, the sum of the lengths of the two shortest sides must
be greater than the length of the longest side, and all sides must have
lengths greater than 0: if either of these conditions is not satisfied,
the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as
arguments, and returns a symbol :equilateral, :isosceles, :scalene, or
:invalid depending on whether the triangle is equilateral, isosceles,
scalene, or invalid.

Examples:

triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

P
input: 3 numbers (floats or integers side lengths)
output: symbol (1 of 4 options classifying triangle)
rules
explicit:
write a method
triangle are classified by 3 criteria
  equilateral - all sides are the same
  isoceles - 2 sides are equal length and the 3rd is different
  scalene - all 3 sides are different length
valid triangles sides are > 0 and sum of 2 shortest sides must
  be > than the length of the longest side
4 return values are symbols

E
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

D
floats

A
sort sizes in an array
- determine if triangle is valid 
- valid triangles sides are > 0 and 
- sum of 2 shortest sides must be > than the length of the longest side
  - else return :invalid
- find out how many sides are equal
  - 3 comparisons ab, ac, bc
  - if all sides are equal
    - return :equilateral
    - if 2 sides are equal and the 3rd different
      - return isoceles
  - if all siders are different
    - return scalene
=end
def valid_triangle?(sides)
  sides.all? { |side| side > 0 } && sides[0] + sides[1] > sides[2]
end

def equal_sides(sides)
  equal_sides_count = 0
  equal_sides_count += 1 if sides[0] == sides[1]
  equal_sides_count += 1 if sides[0] == sides[2]
  equal_sides_count += 1 if sides[1] == sides[2]
  equal_sides_count
end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort
  return :invalid unless valid_triangle?(sides)

  case equal_sides(sides)
  when 3 then :equilateral
  when 1 then :isosceles
  else        :scalene
  end
end

p triangle(3, 3, 3) #== :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

# Provided Solution
def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side > sides.reduce(:+), sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end

# Refactored
def valid_triangle?(sides)
  sides.all? { |side| side > 0 } && sides[0] + sides[1] > sides[2]
end

def equal_sides(sides)
  return 3 if sides.count(sides[0]) == 3
  sides == sides.uniq ? 0 : 2
end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3].sort
  return :invalid unless valid_triangle?(sides)

  case equal_sides(sides)
  when 3 then :equilateral
  when 2 then :isosceles
  else        :scalene
  end
end

p triangle(3, 3, 3) #== :equilateral
p triangle(3, 3, 1.5) #== :isosceles
p triangle(1.5, 3, 3) #== :isosceles
p triangle(3, 4, 5) #== :scalene
p triangle(0, 3, 3) #== :invalid
p triangle(3, 1, 1) #== :invalid
