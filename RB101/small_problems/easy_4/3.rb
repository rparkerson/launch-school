=begin
In the modern era under the Gregorian Calendar, leap years occur in every
year that is evenly divisible by 4, unless the year is also divisible by 100.
If the year is evenly divisible by 100, then it is not a leap year unless
the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. Write a method
that takes any year greater than 0 as input, and returns true if the year
is a leap year, or false if it is not a leap year.
P 
input: integer (positive year)
output: return boolean
rules:
explicit:
year is > 0
leap year if year divisible by 4 or 400 evenly but not 100
return true if leap year else false

mental model:
define a method that takes 1 integer(year) as an argument and returns true
if year is a leap year else false.  
Year > 0. leap year % 4 (or 400) == 0 and leap year % 100 != 0

E
leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

D
integers
A
Check if integer is an leap year
  leap year % 4 == 0
  leap year % 400 == 0
  leap year % 100 != 0
Return result as a boolean - true if leap year else false
=end

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

# given alternative solution:
def leap_year?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
end

=begin
The order in which you perform tests for a leap year calculation is
important. For what years will leap_year? fail if you rewrite it as:

def leap_year?(year)
  if year % 100 == 0
    false
  elsif year % 400 == 0
    true
  else
    year % 4 == 0
  end
end

This above solution will fail if the leap year is divisible by 400.

Can you rewrite leap_year? to perform its tests in the opposite order of 
the above solution? That is, test whether the year is divisible by 4 first,
then, if necessary, test whether it is divisible by 100, and finally, if
necessary, test whether it is divisible by 400. Is this solution simpler
or more complex than the original solution?
=end

def leap_year?(year)
  if year % 4 == 0
    if year % 400 == 0
      return true
    elsif year % 100 == 0
      return false
    end
    return true
  end
  false
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
