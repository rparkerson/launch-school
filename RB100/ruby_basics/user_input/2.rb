# Write a program that asks the user for their age in years, 
# and then converts that age to months.

puts ">> What is your age in years?"
age_in_years = gets.chomp.to_i       # can use to_f for more precision
puts "You are #{age_in_years * 12} months old."

def age_to_months(years)
  puts "You are #{years * 12} months old."
end

def age_in_years
  puts ">> What is your age in years?"
  gets.to_i
end

age_to_months(age_in_years)

