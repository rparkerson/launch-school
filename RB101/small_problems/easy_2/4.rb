=begin
P
Input: 2 integers (Age and age to retire )
Output: string (containing calculated retirement)
Rules:
Use current year to calculate retirement
Don't need to account for which day or month
match formating in example: numbers on the same line as question.
Questions:
input validation? no
Use integers only, not floats? yes
mental model:
Collect input for age and retirement age, and calculate
retirement year and years left and output.
E
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!
D
Strings and integers
A
prompt for age
save age as integer to variable
prompt for retirement age
save age as integer to variable
calculate years til retirement
add years til retirement to current year
output year, retirement year and years left.
=end

print "What is your age? "
current_age = gets.to_i

print "At what age would you like to retire? "
retire_age = gets.to_i

current_year = Time.new.year
years_until_retire = retire_age - current_age
retire_year = current_year + years_until_retire

puts
puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You have only #{years_til_retire} years of work to go!"
