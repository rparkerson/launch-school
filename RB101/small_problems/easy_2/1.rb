=begin
P
input: random generated number 20 - 200
output: print number
Questions:
is age range inclusive? yes
mental model:
print string with age inside
E
print_age => Teddy is 69 years old!
print_age => Teddy is 20 years old!
print_age => Teddy is 200 years old!
D
strings
A
calculate age and save as a variable
use string interpolation to convert age(integer) into string
print string with age
=end

def print_age
  age = rand(20..200)
  puts "Teddy is #{age} years old!"
end

print_age

def print_age
  puts "Teddy is #{rand(181) + 20} years old!"
end

print_age

#  Further exploration
def print_name_age(name, age)
  puts "#{name} is #{age} years old!"
end

def get_name
  puts "Please enter name:"
  name = gets.chomp
  return 'Teddy' if name == ''
  name
end

def generate_age
  rand(20..200)
end

name = get_name
age  = generate_age
print_name_age(name, age)

#  Further exploration (with ternary operator)
def print_name_age(name, age)
  puts "#{name} is #{age} years old!"
end

def get_name
  puts "Please enter name:"
  name = gets.chomp
  name.empty? ? 'Teddy' : name
end

def generate_age
  rand(20..200)
end

name = get_name
age  = generate_age
print_name_age(name, age)
