=begin
Rotation (Part 2)

Write a method that can rotate the last n digits of a number. For example:

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want.
(Recommended!)

You may assume that n is always a positive integer.

P
input: integer, integer (number of digits from the the last number)
output: return new integer ()
rules
explicit:
write a method takes 2 arguments
rotate the last n digits of a number (n is second argument)
rotat means to move the n digit space to the end of integer
rotating 1 digit results in the orginal number being returned
assume n is always a positive integer
can use the method from the previous exercise
question:
can we use the array #rotate method? -yes no mention of method restrictions
do we assume that n never exceeds the integer digits size? can validate or not

E
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

D
arrays

A
- convert integers into an array
- select the end section of the array based on n (second argument)
- roatate that section
- combine that rotated section with the starting section of the array
- convert to an integer and return new integer

=end

def rotate_rightmost_digits(num, n)
  digits = num.digits.reverse
  end_digits = digits[-n..-1]
  start_digits = digits - end_digits
  (start_digits + end_digits.rotate).join.to_i
end

p rotate_rightmost_digits(735291, 1) #== 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, n)
  digits = num.digits.reverse
  end_digits = digits[-n..-1]
  start_digits = digits - end_digits
  (start_digits + rotate_array(end_digits)).join.to_i
end

p rotate_rightmost_digits(735291, 1) #== 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

def rotate_rightmost_digits(num, n)
  result = num.to_s.chars
  (result[0...-n] + result[-n..-1].rotate).join.to_i
end

p rotate_rightmost_digits(735291, 1) #== 735291
p rotate_rightmost_digits(735291, 2) #== 735219
p rotate_rightmost_digits(735291, 3) #== 735912
p rotate_rightmost_digits(735291, 4) #== 732915
p rotate_rightmost_digits(735291, 5) #== 752913
p rotate_rightmost_digits(735291, 6) #== 352917
# p rotate_rightmost_digits(735291, 7) #== 352917

def rotate_rightmost_digits(num, n)
  arr = num.to_s.chars
  arr[-n..-1] = arr[-n..-1].rotate
  arr.join.to_i
end

p rotate_rightmost_digits(735291, 1) # == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

def rotate_rightmost_digits(num, n)
  arr = num.to_s.chars
  (arr.take(arr.size - n) + arr[-n..-1].rotate).join.to_i
end

p rotate_rightmost_digits(735291, 1) # == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

def rotate_rightmost_digits(num, n)
  arr = num.to_s.chars
  arr << arr.delete_at(-n)
  arr.join.to_i
end

p rotate_rightmost_digits(735291, 1) # == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

def rotate_rightmost_digits(num, n)
  arr = num.to_s.chars
  (arr << arr.delete_at(-n)).join.to_i
end

p rotate_rightmost_digits(735291, 1) # == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917

def rotate_rightmost_digits(num, n)
  arr = num.to_s
  (arr << arr.slice!(-n)).to_i
end

p rotate_rightmost_digits(735291, 1) # == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
