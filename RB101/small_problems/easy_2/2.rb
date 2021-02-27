=begin
P
input: length and width (in meters)
output: area (m**2 and ft**2)
questions:
will there need to be input validation? No - not mentioned
is the conversion to ft after area is determined or before? after
mental model:
ask the user for length(m) and width(m) and print the area(m and ft)
E
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).
D
Floats and strings
A
Prompt the user for length of room
set answer to a variable
prompt the user for width of the room
set answer to a variable
calculate the area in sq meters
convert the area to sq feet(round to 2 decimals)
print the result
=end

SQMETERS_TO_SQFEET = 10.7639

def calculate_area(length, width)
  length * width
end

def sqmeters_to_sqfeet(number)
  (number * SQMETERS_TO_SQFEET).round(2)
end

puts 'Enter the length of the room in meters:'
length = gets.to_f

puts 'Enter the width of the room in meters:'
width = gets.to_f

sq_meters = calculate_area(length, width)
sq_feet = sqmeters_to_sqfeet(sq_meters)

puts "The area of the room is #{sq_meters} " + \
     "square meters (#{sq_feet} square feet)."

#  Further Exploration
SQFEET_TO_SQCENTIMETERS = 929.03
SQFEET_TO_SQINCHES = 144

def calculate_area(length, width)
  length * width
end

def sqfeet_to_sqcentimeters(number)
  (number * SQFEET_TO_SQCENTIMETERS).round(2)
end

puts 'Enter the length of the room in feet:'
length = gets.to_f

puts 'Enter the width of the room in feet:'
width = gets.to_f

sq_feet = calculate_area(length, width)
sq_inches = (sq_feet * SQFEET_TO_SQINCHES).round(2)
sq_centimeters = sqfeet_to_sqcentimeters(sq_feet)

puts "The area of the room is #{sq_feet} " + \
     "square feet (#{sq_inches} square inches or " + \
     "#{sq_centimeters} square centimeters)."
