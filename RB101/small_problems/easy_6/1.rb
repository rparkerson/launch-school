=begin
Cute angles
Write a method that takes a floating point number that represents an angle
between 0 and 360 degrees and returns a String that represents that angle
in degrees, minutes and seconds. You should use a degree symbol (°) to
represent degrees, a single quote (') to represent minutes, and a double
quote (") to represent seconds. A degree has 60 minutes, while a minute
has 60 seconds.

Examples:

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

Note: your results may differ slightly depending on how you round values,
but should be within a second or two of the results shown.

You should use two digit numbers with leading zeros when formatting the
minutes and seconds, e.g., 321°03'07".

You may use this constant to represent the degree symbol:

DEGREE = "\xC2\xB0"

P
input: float (between 0 and 360 -degrees )
output: string (represents that angle in degrees °, minutes ', seconds" )
rules
explicit:
return a string
string should use degrees °, minutes ', seconds" format
a degree has 60 minutes.
a minute has 60 seconds
format should be 2 digit numbers with leading zeros e.g., 321°03'07"
can use this constant for degree symbol ° - DEGREE = "\xC2\xB0"
implicit:
will need to use cancel \ for double quotes or use %(format)
questions:
Will the float always be between 0 and 360?
How will we round the values? - not specified

E
dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

format example: 321°03'07"

D
strings

A
- convert float to degrees, minutes seconds
  - round to a 2 digit number
- format the return value with leading zeros and ° ' " symbols

create convert float to dms method 1 argument (float)
  degrees = whole number
  minutes = 1 degree = 60 min or 1 minute = 1/60 degree
  seconds = 1 degree = 3600   or 1 second = 1/3600 degree

  degrees = float % 1 or float rounded down *.floor
  minutes = degrees(float % 1) / 1/60 or (float % 1) * 60
  seconds = minutes((float % 1) * 60) % 1 * 60

=end

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(float)
  total_seconds = (float * SECONDS_PER_DEGREE).round
  degrees = total_seconds / SECONDS_PER_DEGREE
  minutes = (total_seconds - (degrees * SECONDS_PER_DEGREE)) / SECONDS_PER_MINUTE
  seconds = total_seconds - (degrees * SECONDS_PER_DEGREE) - (minutes * SECONDS_PER_MINUTE)
  
  "#{degrees}#{DEGREE}#{format("%02d'%02d\"", minutes, seconds)}"
end

p dms(30) #== %(30°00'00")
p dms(76.73) #== %(76°43'48")
p dms(254.6) #== %(254°36'00")
p dms(93.034773) #== %(93°02'05")
p dms(0) #== %(0°00'00")
p dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

=begin
*use divmod
convert to seconds
convert to minutes 
convert to degrees
=end
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(float)
  total_seconds = (float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(30) #== %(30°00'00")
p dms(76.73) #== %(76°43'48")
p dms(254.6) #== %(254°36'00")
p dms(93.034773) #== %(93°02'05")
p dms(0) #== %(0°00'00")
p dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

#  Further exploration modify for ranges < 0 or greater than 360
DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(float)
  float = float % 360
  total_seconds = (float * SECONDS_PER_DEGREE).round
  degrees = total_seconds / SECONDS_PER_DEGREE
  minutes = (total_seconds - (degrees * SECONDS_PER_DEGREE)) / SECONDS_PER_MINUTE
  seconds = total_seconds - (degrees * SECONDS_PER_DEGREE) - (minutes * SECONDS_PER_MINUTE)
  
  "#{degrees}#{DEGREE}#{format("%02d'%02d\"", minutes, seconds)}"
end

p dms(30) #== %(30°00'00")
p dms(76.73) #== %(76°43'48")
p dms(254.6) #== %(254°36'00")
p dms(93.034773) #== %(93°02'05")
p dms(0) #== %(0°00'00")
p dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")
p dms(400) == %(40°00'00")
p dms(-40) == %(320°00'00")
p dms(-420) == %(300°00'00")
