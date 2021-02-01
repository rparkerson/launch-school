# Write a program that tells you the following:
# Hours in a year.
hours_in_year = 365 * 24
hours_in_leap_year = 366 * 24 
puts 'hours in year and leap year:'
puts hours_in_year # regular year
puts hours_in_leap_year  # leap year
puts

# Minutes in a decade
minutes_in_decade = hours_in_year * 8 * 60 + hours_in_leap_year * 2 * 60
puts 'minutes in a decade:'
puts minutes_in_decade
puts

# Your age in seconds
birthday = Time.local(1985, 03, 14)
age_in_seconds = Time.now - birthday
puts 'age in seconds using Time method'
puts age_in_seconds.to_i
puts 

# Age in seconds
minutes_in_year = minutes_in_decade / 10
age_in_seconds2 = minutes_in_year * 35 * 60
puts 'age in seconds using decade estimate:'
puts age_in_seconds2.to_i
puts
# Age in seconds
seconds_in_year = hours_in_year * 60 *60
seconds_in_leap_year = hours_in_leap_year * 60 *60
age_in_seconds3 = seconds_in_year * 26 + seconds_in_leap_year * 9
puts 'age in seconds using actual number of leap years:'
puts age_in_seconds3
puts 

# Dear author's age
puts (minutes_in_year * 60)
puts seconds_in_year
puts (1_160_000_000 / (minutes_in_year * 60))
