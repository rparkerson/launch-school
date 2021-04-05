=begin
Rotation (Part 3)
If you take a number like 735291, and rotate it to the left, you get 352917.
If you now keep the first digit fixed in place, and rotate the remaining
digits, you get 329175. Keep the first 2 digits fixed in place and rotate
again to 321759. Keep the first 3 digits fixed in place and rotate again
to get 321597. Finally, keep the first 4 digits fixed in place and rotate
the final 2 digits to get 321579. The resulting number is called the maximum
rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum
rotation of that argument. You can (and probably should) use the
rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

Example:

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

P
input: integer
output: integer (maximum rotation of original number)
rules
explicit:
write a method
return maximum roatation
max roatation is rotating a number then keeping first dig in place and
  rotating, then keep second digit fixed and roated etc. until all digits
  fixed
can use the rotate_rightmost_digits method from previous exercise
Do not have to handle multiple leading zeros

E
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

D
arrays
strings

A
- rotate the first digit
- take that result and rotate the second digit
- keep going until the last (or second to last) digit is rotated

- find num digits size
- iterate through num size to 1 as the n value of #rotate_rightmost_digit
- Use the previous method to rotate rightmost digit

=end

def rotate_rightmost_digits(num, n)
  arr = num.to_s.chars
  arr << arr.delete_at(-n)
  arr.join.to_i
end

def max_rotation(num)
  number = num
  num.to_s.size.downto(1) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

p max_rotation(735291) #== 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

def rotate_rightmost_digits(num, n)
  arr = num.to_s.chars
  arr << arr.delete_at(-n)
  arr.join.to_i
end

def max_rotation(num)
  number = num
  num.to_s.size.downto(1) { |n| number = rotate_rightmost_digits(number, n) }
  number
end

p max_rotation(735291) #== 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

def max_rotation(num)
  arr = num.to_s.chars
  arr.size.downto(1) { |n| arr.rotate!(n) }
  arr.join.to_i
end

p max_rotation(735291) #== 321579  0 1 2 3 4 5  - 6 5 4 3 2 1
p max_rotation(3) #== 3
p max_rotation(35) #== 53
p max_rotation(105) #== 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) #== 7_321_609_845

=begin
Further exploration - how would you approach this without the method used
from the previous exercises? Would your solution look different? Does this
3 part approach make the problem easier to understand or harder?
I think the 3 part apporach makes the problem easier to understand since
it is a way to break it into smaller and more managable pieces.
I would do it differently in my approach similiar to the one below. I
might have taken the digits and rotated the leftmost digit first so I
could iterate over a range and not use the #downto method

A
- rotate the first digit
- take that result and rotate the second digit
- keep going until the last (or second to last) digit is rotated

- change the number into an array of strings
- initialize an index variable n and set to 0
- until n is equal to the array size
  - rotate the array from n end of array (-1)
  - combine that value with first part of array not rotated (0...n)
  - save that value as array value
  - increment n by 1
- return array as an integer

=end

def max_rotation(num)
  arr = num.to_s.chars
  index = 0

  until index == arr.size
    arr = arr[0...index] + arr[index..-1].rotate
    index += 1
  end

  arr.join.to_i
end

p max_rotation(735291) #== 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

# Further Exploration: preserved zeros
def max_rotation(num)
  arr = num.to_s.chars
  index = 0

  until index == arr.size
    arr = arr[0...index] + arr[index..-1].rotate
    index += 1
  end

  arr.first == '0' ? arr.join : arr.join.to_i # returns string if leading 0(s)
end

p max_rotation(735291) #== 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) #== 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845

def max_rotation(num)
  str = num.to_s
  str.size.times { |index| str << str.slice!(index) }
  str # can invoke #to_i here if preserving zeros doesn't matter
end

p max_rotation(735291) #== 321579
p max_rotation(3) #== 3
p max_rotation(35) #== 53
p max_rotation(105) #== 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) #== 7_321_609_845
