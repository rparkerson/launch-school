=begin
Multiplicative Average
Write a method that takes an Array of integers as input, multiplies all
the numbers together, divides the result by the number of entries in the
Array, and then prints the result rounded to 3 decimal places. Assume the
array is non-empty.

Examples:

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

P
input: array(of integers)
output: print float (round to 3 decimal places)
rules
explicit:
define a method
takes array of integers as argument
returns float
multiply all the numbers together
divide the result by number of elements in array
print the result rounded to 3 decimal places
The array is non-empty
implicit:
format output "The result is <float>"
if the number is a whole number still display as a float with 3 decimal
  places
round the last decimal place up example .666666 => .667
return value not used
question:
will the integers in array argument always be positive?

E
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

D
array
integers
floats

A
- define method takes an array prints a float
- multiply all the elements in array
- divide that number by number of elements
- round to 3 decimal places

- initialize `result`
- iterate over the array and multiply all the elements together
  - save this value as `result`
- divide `result` by number of elements in array as a float
  - round to 3 places
- print result with format to 3 decimal places (even if whole number)
=end

def show_multiplicative_average(array)
  result = array.reduce(:*) / array.size.to_f
  puts "The result is #{format("%.3f", result)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
show_multiplicative_average([0])
show_multiplicative_average([3, -5, -3])

=begin
Futher Exploration
If you omit the call to #to_f then the division will only calculate for whole
numbers and not decimal places and the result will be rounded differently when
it does not divide evenly.  Test case 3 would be 28361.000 instead of 
28361.667
=end

