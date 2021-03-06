=begin
A continuation of the previous exercise.

The British Empire adopted the Gregorian Calendar in 1752, which was a leap
year. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar,
leap years occur in any year that is evenly divisible by 4.

Using this information, update the method from the previous exercise to
determine leap years both before and after 1752.

P
input: integer(year)
output: boolean(true if leap year else false)
rules:
explcit:
1752 is a leap year
use julian calendar for 1751 and prior
implicit:
same rules apply as the previous exercise: positive years only

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
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true

D
integer
A
determine if year is less than 1752
  if less than 1752 use julian calender calculator
  else use gregorian calender calculation (from previous exercise)
return boolean true if year is a leap year else false

=end

def leap_year?(year)
  year < 1752 ? julian_leap_year?(year) : gregorian_leap_year?(year)
end

def gregorian_leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

def julian_leap_year?(year)
  year % 4 == 0
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

def leap_year?(year)
  year < 1752 ? (year % 4 == 0) : ((year % 400 == 0) || (year % 4 == 0 && year % 100 != 0))
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

def leap_year?(year)
  if year < 1752
    year % 4 == 0
  else
    (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
  end
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

def leap_year?(year)
  if year < 1752 && year % 4 == 0
    true
  elsif year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else
    year % 4 == 0
  end
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true

# Further exploration
# The Gregorian calender altered the rounded number of 365.25 to a more 
# accurate number (365.2422) and help match the calendar to the lunar cycles 
# and seasons.  This made the day/season Easter occured more accurate.  To account
# for the rounding drift error when implemented the day went from Thursday
# October 4th, 1582 to Friday, October 15th, 1582, the following day.
# Great Britain started using this in 1752.
