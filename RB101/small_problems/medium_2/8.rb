=begin
Next Featured Number Higher than a Given Value
A featured number (something unique to this exercise) is an odd number that
is a multiple of 7, and whose digits occur exactly once each. So, for
example, 49 is a featured number, but 98 is not (it is not odd), 97 is not
(it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the
next featured number that is greater than the argument. Return an error
message if there is no next featured number.

Examples:

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills
those requirements

P
input: integer
output: return integer or string (next featured number counting up or
  error message)
explicit rules:
write a method
find the next highest featured number or return an error message
a featured number is an odd number
a featured number is a multiple of 7
a featured number digits occur exactly once each
implicit:
there are no more featured after featured(9_999_999_999)
digits include 0 through 9
no leading zeros implied

E
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills
those requirements

D
strings

A
- filter for the the 3 requirements - odd, multiple of 7, unique digits
- finding the next greatest occurance
- setting an error message if no more found

- count from the argument up until 9_999_999_999
  - if it meets the criteria
    -return the number
  - else reuturn error message
=end
require 'pry'
LIMIT = 9_999_999_999

def unique_digits?(num)
  arr = num.to_s.chars
  arr == arr.uniq
end

def featured(num)
  (num + 1).upto(LIMIT) do |n|
    return n if (n.odd?) && (n % 7 == 0) && (unique_digits?(n))
  end
  "There is no possible number that fulfills those requirements."
end

p featured(12) #== 21
p featured(20) #== 21
p featured(21) #== 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills
# those requirements
