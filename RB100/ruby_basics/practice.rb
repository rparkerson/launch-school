# a = 7

# def my_value(b)
#   a = b
# end

# my_value(a + 5)
# puts a

# a = "Xyzzy"

# def my_value(b)
#   b[2] = '-'
# end

# my_value(a)
# puts a

# a = "Xyzzy"

# def my_value(b)
#   b = 'yzzyX'
# end

# my_value(a)
# puts a

# a = 7

# def my_value(b)
#   b = a + a
# end

# my_value(a)
# puts a

# a = 7
# array = [1, 2, 3]

# array.each do |element|
#   a = element
# end

# puts a

# array = [1, 2, 3]

# array.each do |element|
#   a = element
# end

# puts a

# a = 7
# array = [1, 2, 3]

# array.each do |a|
#   a += 1
# end

# puts a

# a = 7
# array = [1, 2, 3]

# def my_value(ary)
#   ary.each do |b|
#     a += b
#   end
# end

# my_value(array)
# puts a

#  #  Loops 1

# loop do
#   puts 'Just keep printing...'
#   break
# end

# loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop'
#     break
#   end

#   break
# end

# puts 'This is outside all loops.'

# iterations = 0
# loop do
#   iterations += 1
#   puts "Number of iterations = #{iterations}"
  
#   break if iterations > 4
# end

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   if answer == 'yes'
#     break
#   end
# end

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer == 'yes'
# end

# say_hello = true
# counter = 0
# while say_hello
#   puts 'Hello!'
#   counter += 1
#   if counter == 5
#     say_hello = false
#   end
# end

# numbers = []

# while numbers.size < 5
#   numbers.push(rand(100))
#   puts numbers if numbers.size == 5
# end

# count = 1

# until count == 11
#   puts count
#   count += 1
# end

# numbers = [7, 9, 13, 25, 18]

# until numbers.size == 0
#   puts numbers.shift
# end

# for i in 1..100
#   puts i if i.odd?
# end

# friends = ['Sarah', 'John', 'Hannah', 'Dave']

# for friend in friends do puts "Hello, #{friend}!" end

# count = 1

# loop do
#   puts "#{count} is #{count.odd? ? 'odd' : 'even'}!"
#   break if count == 5
#   count += 1
# end

# loop do
#   number = rand(100)
#   puts number
#   break if number >= 0 && number <= 10
# end

# loop do
#   puts number = rand(100)
#   break if number < 11
# end

# loop do
#   process_the_loop = [true, false].sample
#   if process_the_loop
#     puts "The loop was processed!"
#     break
#   else
#     puts "The loop wasn't processed!"
#   end
# end

# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.to_i
#   if answer == 4
#     puts "That's correct!"
#     break 
#   end
#   puts "Wrong answer.  Try again!s"  
# end

# numbers = []

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
#   numbers.push input
#   break if numbers.size == 5
# end
# puts numbers

# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names.pop
#   break if names.empty?
# end

# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names[0]
#   names.delete_at(0)
#   break if names.size == 0
# end

# 5.times do |index|
#   puts index
#   break if index == 2
# end

# 5.times do |index|
#   puts index
#   break if index == 4
# end

# 5.times do |index|
#   puts index
#   break if index < 7
# end

# number = 0

# until number == 10
#   number += 1
#   puts number if number.even?
# end

# number_a = 0
# number_b = 0

# loop do
#   p number_a += rand(2)
#   p number_b += rand(2)
#   break if number_a == 5 || number_b == 5
# end

# def greeting
#   puts 'Hello!'
# end

# number_of_greetings = 2

# while number_of_greetings > 0
#   greeting
#   number_of_greetings -= 1
# end

# puts ">> Type anything you want:"
# answer = gets
# p answer

# puts ">> What is your age in years?"
# age_years = gets.to_i
# puts "You are #{age_years * 12} months old."

# puts ">> Do you want me to print something? (y/n)"
# answer = gets
# puts "something" if answer == "y\n"

# loop do
#   puts ">> Do you want me to print something? (y/n)"
#   answer = gets.chomp.downcase
#   break puts "something" if answer == "y"
#   break if answer == "n"
#   puts ">> Invalid input! Please enter y or n"
# end

# #  Launch School Printer 1
# loop do
#   puts ">> How many output lines do you want? Enter a number >= 3:"
#   num = gets.to_i
#   if num >= 3
#     num.times { puts "Launch School is the best!" }
#     break
#   end
#   puts ">> That's not enough lines."
# end

