=begin
Unlucky Days
Write a method that returns the number of Friday the 13ths in the year
given by an argument. You may assume that the year is greater than 1752
(when the United Kingdom adopted the modern Gregorian Calendar) and that
it will remain in use for the foreseeable future.

Examples:

friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

P
input: integer(year after 1752)
output: integer (number of Friday the 13th)
explicit rules:
write a method
assume the year is greater than 1752
assume the calender won't change in the forseeable future
count how many Fridays fell on the 13th of the month that year
implicit:
account for leap years
question:
what time zone do we account for ? - local
Do we account for daylight savings ? - use local time

E
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

D
integers

A
- initialize a counter
- check the day of the week for every 13th of each 12 month
  - if day of the week is a friday count it
- return the number of counts

use *time

=end

def friday_13th(year)
  count = 0
  1.upto(12) { |month| count += 1 if Time.local(year, month, 13).friday? }
  count
end

p friday_13th(2015) #== 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2

# Provided Solution
require 'date'

def friday_13th(year)
  unlucky_count = 0
  thirteenth = Date.civil(year, 1, 13)
  12.times do
    unlucky_count += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_count
end

=begin
Further Exploration
Count the number months that have five Fridays, in a year. You must account
for leap years.
A

=end
DAYS_PER_MONTH = {
  1 => 31, 2 => 28, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31,
  8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31
}

def leap_year?(year)
  (year % 4 == 0) || (year % 100 == 0) || (year % 400 == 0)
end

def five_friday_months(year)
  five_friday_months = 0

  DAYS_PER_MONTH.each do |month, days|
    fridays_in_month = 0

    days + 1 if month == 2 && leap_year?(year)
    1.upto(days) do |day|
      fridays_in_month += 1 if Time.local(year, month, day).friday?
    end

    five_friday_months += 1 if fridays_in_month == 5
  end

  five_friday_months
end

p five_friday_months(2020) # 4
p five_friday_months(2021) # 5
p five_friday_months(2022) # 4
