=begin
The time of day can be represented as the number of minutes before or after
midnight. If the number of minutes is positive, the time is after midnight.
If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns
the time of day in 24 hour format (hh:mm). 
Your method should work with any integer input.

You may not use ruby's Date and Time classes.

Examples:

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

Disregard Daylight Savings and Standard Time and other complications.

P
input: integer
output: string (hh:mm)
rules
explicit:
Takes time as an minute based format - 60 minutes/hour
if negative count backwards from 00:00 (midnight)
if positive count forwards from 00:00 (midnight)
return a string with 24 hour format (hh:mm)
don't account for daylight savings and standard time
implicit:
if the time is over 24 hours(1440 minutes) start the counter into next day

E
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

D
integer

A
define time_of_day that takes an integer as an argument `number`
find value of time less than 24 hours
  set `no_days` variable to `number` % 1440
find hours in minutes given
  `hours` variable = `no_days` / 60
find minutes in time given
  `minutes` variable = `no_days` % 60
convert `hours` and `minutes` to a string and combine with ':'
format number with 2 digits
return time as a string
=end

def time_of_day(number)
  no_days = number % 1440
  hours = no_days / 60
  minutes = no_days % 60

  if hours < 10
    hours = "0#{hours}"
  end

  if minutes < 10
    minutes = "0#{minutes}"
  end

  "#{hours}:#{minutes}"
end

p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(number)
  no_days = number % MINUTES_PER_DAY
  hours = no_days / MINUTES_PER_HOUR
  minutes = no_days % MINUTES_PER_HOUR

  hours = "0#{hours}" if hours < 10
  minutes = "0#{minutes}" if minutes < 10

  "#{hours}:#{minutes}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % MINUTES_PER_DAY
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format("%02d:%02d", hours, minutes)
end

p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"

#  Further exploration use Ruby Date and Time class and find weekday
#  week starts Sunday at midnight
#  Example time_of_week(-4231) => Thursday 01:29

#  Student solution:
WEEK_START_DATE = Time.at(259200).gmtime
SECONDS_PER_MINUTE = 60

def time_of_day(minutes)
  seconds = minutes * SECONDS_PER_MINUTE
  date = WEEK_START_DATE + seconds
  date.strftime('%A %H:%M')
end

p time_of_day(0) #== "00:00"
p time_of_day(-3) #== "23:57"
p time_of_day(35) #== "00:35"
p time_of_day(-1437) #== "00:03"
p time_of_day(3000) #== "02:00"
p time_of_day(800) #== "13:20"
p time_of_day(-4231) #== "01:29"
