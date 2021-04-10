=begin
Tri-Angles
A triangle is classified as follows:

    right One angle of the triangle is a right angle (90 degrees)
    acute All 3 angles of the triangle are less than 90 degrees
    obtuse One angle is greater than 90 degrees.

To be a valid triangle, the sum of the angles must be exactly 180 degrees,
and all angles must be greater than 0: if either of these conditions is not
satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and
returns a symbol :right, :acute, :obtuse, or :invalid depending on whether
the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about
floating point errors. You may also assume that the arguments are specified
in degrees.

Examples:

triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

P
input: integers 3 arguments(angles)
output: 1 of 4 symbols (classifying the triangle)
rules
explicit:
write a method that returns the type of triangle
:right - one angle is 90 degrees
:acute - all angles are less than 90 degrees
:obtuse - one angle is greater than 90 degrees
:invalid - if angles don't add to 180 or are not greater than 0
assume all input is integers
assume numbers are in degrees

E
triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid

D
integers

A
-if the triangle is invalid - angles sum = 180 and > 0
  - return :invalid
- check if angle is 90 degrees
  - return :right
- check if any angle is greater than 90 degrees
  - return :obtuse
- else return :acute
=end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  return :invalid if angles.sum != 180 || angles.include?(0)
  
  case
  when angles.include?(90)                then :right
  when angles.any? { |angle| angle > 90 } then :obtuse
  else                                         :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

# Refactored
def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  return :invalid if angles.sum != 180 || angles.include?(0)
  return :right   if angles.include?(90)
  return :obtuse  if angles.any? { |angle| angle > 90 }
  :acute
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid

# Refactored
def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  case
  when angles.sum != 180 || angles.include?(0) then :invalid
  when angles.include?(90)                     then :right
  when angles.max > 90                         then :obtuse
  else                                              :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
