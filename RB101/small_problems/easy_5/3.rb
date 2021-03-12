=begin
After Midnight (Part 2)
As seen in the previous exercise, the time of day can be represented as the
number of minutes before or after midnight. If the number of minutes is
positive, the time is after midnight. If the number of minutes is negative,
the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and
return the number of minutes before and after midnight, respectively.
Both methods should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.

Examples:

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

Yes, we know that 24:00 isn't a valid time in 24-hour format.
Humor us, though; it makes the problem more interesting.

Disregard Daylight Savings and Standard Time and other irregularities.

P
input: string (hh:mm format)
output: integer(number of minutes after or before midnight)
rules
explicit:
create two methods that calculate the minutes after or before midnight
the time of day can be represented as numbers:
  if after midnight the number is positive
  if before midnight the number is negative
each method should return a range 0..1439
Do not use Ruby's Date and Time methods
implicit:
after_midnight adds
before_midnight subtracts

E

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

D
integer

A
create after_midnight() that takes a string `time` in 'hh.mm' format
break up `time` into `hours` and `minutes`
    reference first 2 characters of string and convert to integer
    reference last 2 characters of `time` string and convert to integer
delta minutes = add hours * 60 to minutes
return integer of minutes after midnight delta minutes

create before_midnight() that takes a string `time` in 'hh.mm' format
break up `time` into `hours` and `minutes`
    reference first 2 characters of string and convert to integer
    reference last 2 characters of `time` string and convert to integer
    24 - hours * 60 - minutes
return 
=end
MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24

def after_midnight(time)
  return 0 if time == '24:00'
  hours = time[0, 2].to_i
  minutes = time[-2, 2].to_i
  hours * MINUTES_PER_HOUR + minutes
end

def before_midnight(time)
  return 0 if time == '00:00'
  hours = time[0, 2].to_i
  minutes = time[-2, 2].to_i
  (HOURS_PER_DAY - hours) * MINUTES_PER_HOUR - minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

#  Further Exploration use Date and Time classes

#  Student example:
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

require 'time'

def time_to_minutes(string)
  hours = Time.parse(string).hour
  minutes = Time.parse(string).min
  hours * MINUTES_PER_HOUR + minutes
end

def after_midnight(string)
  total_mins = time_to_minutes(string)
  total_mins % MINUTES_PER_DAY
end

def before_midnight(string)
  total_mins = time_to_minutes(string)
  (MINUTES_PER_DAY - total_mins) % MINUTES_PER_DAY
end
