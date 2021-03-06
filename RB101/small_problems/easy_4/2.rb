=begin
Write a method that takes a year as input and returns the century. 
The return value should be a string that begins with the century number,
and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000
comprise the 20th century.

P
input: integer(year)
output: string (century ending with appropriate suffix)
rules:
explicit requirements:
takes input as year
suffix ends as st, nd, rd, or th
new centuries begin in years that end in 01

implicit requirements:
year is integer

questions: 
can we take a negative year? no - no example
can year 0 be an input? - no new centuries begin with 01
validation check for integer ? no

E
Examples:

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

D
strings
A
Identify what century the integer 'year' is in
  'year' / 100 + 1
  if 'year' % 100 == 0 do not add 1
change 'century' to string
determine the 'get_suffix'
  take the last number 'century' as a string
  11 through 19 = 'th'
  1 = 'st' 2 = 'nd' 3 = 'rd' 4, 5, 6, 7, 8, 9, 0 = 'th'
return concatenated century string and suffix
=end

def century(year)
  century_integer = year / 100 + 1
  century_integer = year / 100 if year % 100 == 0
  century_string = century_integer.to_s
  add_suffix(century_string)
end

def add_suffix(string)
  suffix_string = string
  exceptions = string[-2, 2]
  last_char = string[-1]
  if ['11', '12', '13'].include?(exceptions)
    suffix_string << 'th'
  elsif last_char == '1'
    suffix_string << 'st'
  elsif last_char == '2'
    suffix_string << 'nd'
  elsif last_char == '3'
    suffix_string << 'rd'
  else
    suffix_string << 'th'
  end
  suffix_string
end

p century(1900) #== '19th'
p century(1) #== '1st'
p century(2000) #== '20th'
p century(2001) #== '21st'
p century(1965) #== '20th'
p century(256) #== '3rd'
p century(5) #== '1st'
p century(10103) #== '102nd'
p century(1052) #== '11th'
p century(1127) #== '12th'
p century(11201) #== '113th'

p century(1900) == '19th'
p century(1) == '1st'
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
