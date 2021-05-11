require 'pry'

# break returns the supplied value or otherwise returns `nil`
# The underscore may be used to enhance readability for humans.
# You may place an underscore anywhere in the number.
# :name

# p "abcdefghijklmnopqrstuvwxyz".upcase(:lithuanian)
# p String.new

# a = %w(a b c d e)
# p a.insert(3, 5, 6, 7)

# s = 'abc def ghi,jkl mno pqr,stu vwx yz'
# puts s.split.inspect # %w(abc def ghi,jkl mno pqr,stu vwx yz)
# puts s.split(',').inspect # ['abc def ghi', 'jkl mno pqr', 'stu vwx yz']
# puts s.split(',', 2).inspect # ['abc def ghi', 'jklmno pqr,stu vwx yz']
# puts s.split(nil).inspect

# a = 7

# def my_value(b)
#   b += 10
# end

# my_value(a)
# puts a
=begin
On the last line this will output the same integer 7 that the local variable
`a` was initialized to on the first line. Passing the object referenced by
a to the `my_value` method invocation as an argument sets the parameter `b`,
in the method definition to reference that argument object. Within the
method definition the local variable `b` is reassigned to 10, and `b` points
to a new object. So `a` remains unchanged.
=end
=begin
What's My Value? (Part 2)
What will the following code print, and why? Don't run the code until you
have tried to answer.

This will output 7. Within the method definition the object referenced by
the local variable `a` is passed in as an argument and a differnet local
variable `a` is set to the same ojbect 7. This different variable `a` within
the method definition is reassigned to 17. Although they have the same variable
name `a` they are 2 different local variables, as method definitions create
there own local variable scope. This means that the local variable `a` outside
the method  definition scope remains unchanged and still points to the integer
7.
=end
# a = 7

# def my_value(a)
#   a += 10
# end

# my_value(a)
# puts a

=begin
What's My Value? (Part 3)
What will the following code print, and why? Don't run the code until you
have tried to answer.

This code will output 7. The local variable within the method definition
`a` is a different `a` from the one on the first and last line, since the
method definition creates it's own local variable scope. The assignment, within
the method definition will not affect the local variable `a` outside the method
definition.
=end
# a = 7

# def my_value(b)
#   a = b
# end

# my_value(a + 5)
# puts a

=begin
What's My Value? (Part 4)
What will the following code print, and why? Don't run the code until
you have tried to answer.

This will output `Xy-zy`. The string object, that the local variable `a`
references, is passed in as an argumentment to the `my_value` method call.
In the method definition the local variable `b` is set to this string object.
Then within the method definition the string is mutated using the `[]=` method.
This sets the string character at indext 2 to `'-'`. Since local variables `b`
and `a` both reference the same string object this mutation is shown when
`a` is ouput on the last line.
=end
# a = "Xyzzy"

# def my_value(b)
#   b[2] = '-'
# end

# my_value(a)
# puts a
 
=begin
What's My Value? (Part 5)
What will the following code print, and why? Don't run the code until you
have tried to answer.

This will output `"Xyzzy"`. This is because the string object local variable
`a` references is passed into the `my_value` method call as an argument, but
within the method definition the object is not mutated. The local variable in
the method `b` is reassigned to point to a different object and this first
argument object, `b` first referenced, was never mutated.
=end
# a = "Xyzzy"

# def my_value(b)
#   b = 'yzzyX'
# end

# my_value(a)
# puts a

=begin
What's My Value? (Part 6)
What will the following code print, and why? Don't run the code until you
have tried to answer.

This code will raise an exception and not print anything. Within the method
definition the local variable `b` is being reassigned to the reutrn value of
`a + a`. When this expression is evaluated since the local variable or method
`a` is not initialized with the method definition or accessible there, there
is an error. Method definitions create their own local variable scope and is
closed to accessing local variables initialized outside the method definition.
Method definitions are self contained with respect to local variables.
=end
# a = 7

# def my_value(b)
#   a = b
#   b = a + a
# end

# my_value(a)
# puts a

=begin
What's My Value? (Part 7)
What will the following code print, and why? Don't run the code until you
have tried to answer.

Since the local variable `a` initialized on the first line is accessible
within the block, `a` is reassigned to the element passed to the block as
an argument during each iteration. So the final iteration the local variable
`a` is reassigned to the integer `3` and that is what is output on the last
line. Local variables initialized outside the block are accessible within the
blocks scope.
=end
# a = 7
# array = [1, 2, 3]

# array.each do |element|
#   a = element
# end

# puts a

=begin
What's My Value? (Part 8)
What will the following code print, and why? Don't run the code until you
have tried to answer.

This code will not print anything but will raise an exception. The local
variable `a` initialized inside the block of the each method call is not
accessible outside of the block. This demonstrates block local variable
scoping rules, that local variables initialized with the block are not
visible outside the block.
=end
# array = [1, 2, 3]

# array.each do |element|
#   a = element
# end

# puts a

=begin
What's My Value? (Part 9)
What will the following code print, and why? Don't run the code until you
have tried to answer.

This will output 7 since the local variable `a` initialized on line 1 is not
accessed or reassigned within the block. The block parameter has the same name
as the local variable `a` which is an example of variable shadowing. Variable
shadowing makes the local variable with the same name initialed outside the
block inaccessible. The reason is that in Ruby the local variable set as the
block parameter with the same name takes precedence.

=end
# a = 7
# array = [1, 2, 3]

# array.each do |a|
#   a += 1
# end

# puts a

=begin
What's My Value? (Part 10)
What will the following code print, and why? Don't run the code until you
have tried to answer.

This code will raise an exception before the last line is executed and the 
program will exit. This is because the local variable `a` is undefined within
the method definition so an error will be raised when `a + b` is evaluated.
Local variables initialized outside the method definition are not accessible
within the scope of the method definition, since method definitions are
self contained with respect to local variables.
=end
# a = 7
# array = [1, 2, 3]

# def my_value(ary)
#   ary.each do |b|
#     a += b
#   end
# end

# my_value(array)
# puts a

# loop do
#   break puts 'Just keep printing...'
# end

# loop do
#   puts 'This is the outer loop.'

#   loop do
#     break puts 'This is the inner loop.'
#   end

#   break
# end

# puts 'This is outside all loops.'

# iterations = 1

# loop do
#   puts "Number of iterations = #{iterations}"
#   break if iterations > 4
#   iterations += 1
# end

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer == 'yes'
#   puts 'Input "yes" to stop looping.'
# end

# say_hello = true

# while say_hello
#   5.times { puts 'Hello!' }
#   say_hello = false
# end

# say_hello = true

# while say_hello
#   puts 'Hello!'
#   puts 'Hello!'
#   puts 'Hello!'
#   puts 'Hello!'
#   puts 'Hello!'
#   say_hello = false 
# end

# say_hello = true
# count = 1

# while say_hello
#   puts 'Hello!'
#   count += 1
#   say_hello = false if count > 5
# end

# say_hello = 1

# while say_hello < 6
#   puts 'Hello!'
#   say_hello = say_hello + 1
# end

# numbers = [*0..99]
# count = 1

# while count < 6
#   puts numbers.shuffle.last
#   count += 1
# end

# numbers = []

# while numbers.size < 5
#   numbers << rand(100)
# end

# puts numbers

# numbers = []

# while numbers.size < 5
#   numbers << rand(100)
#   puts numbers if numbers.size == 5
# end

# numbers = []

# while numbers.size < 5
#   numbers << p(rand(100))
# end

# count = 10

# until count == 0
#   puts count
#   count -= 1
# end

# count = 10

# until count == 0
#   count = 1
#   loop do
#     puts count
#     count += 1
#     break if count > 10
#   end
#   count = 0
# end

# count = 1

# until count > 10
#   puts count
#   count += 1
# end

# count = 0

# until count == 10
#   count += 1
#   puts count
# end

# count = 0

# puts count += 1 until count > 9

# numbers = [7, 9, 13, 25, 18]

# until numbers.empty?
#   puts numbers.shift
# end

# numbers = [7, 9, 13, 25, 18]

# until numbers.size > 5
#   puts numbers
#   numbers << 'end'
# end

# numbers = [7, 9, 13, 25, 18]
# count = 1

# until count > 5
#   puts numbers
#   count = 6
# end

# numbers = [7, 9, 13, 25, 18]
# count = 0

# until count > 4
#   puts numbers[count]
#   count += 1
# end

# numbers = [7, 9, 13, 25, 18]
# count = 0

# until count == numbers.size
#   puts numbers[count]
#   count += 1
# end

# for i in 1..100
#   puts i if i.odd?
# end

# for i in 1..100
#   puts i if i % 2 == 1
# end

# for i in 1..100
#   puts i unless i.even?
# end

# for i in 1..100
#   puts i unless i % 2 == 0
# end

# for i in 1..100
#   next if i.even?
#   puts i
# end

# for i in (1..100).to_a.delete_if { |n| n.even? }
#   puts i
# end

# friends = ['Sarah', 'John', 'Hannah', 'Dave']

# for friend in friends
#   puts "Hello, my friend #{friend}!"
# end

# friends = ['Sarah', 'John', 'Hannah', 'Dave']

# for friend in friends
#   puts "I proclaim a greeting to my friend:"
#   puts friend
# end

# count = 1

# loop do
#   puts "#{count} is #{count.odd? ? "odd" : "even" }!"
#   count += 1
#   break if count > 5
# end

# count = 1

# loop do
#   if count.odd?
#     puts "#{count} is odd!"
#   else
#     puts "#{count} is even!"
#   end

#   count += 1
#   break if count > 5
# end

# loop do
#   number = rand(100)
#   puts number
#   break if (0..10).include?(number)
# end

# loop do
#   number = rand(100)
#   puts number
#   break if number <= 10 && number >= 0
# end

# loop do
#   number = rand(100)
#   puts number
#   break if number.between?(0, 10)
# end

# loop do
#   process_the_loop = [true, false].sample

#   if process_the_loop == true
#     puts "The loop was processed!"
#     break
#   else
#     puts "The loop wasn't proessed!"
#   end
# end

# process_the_loop = [true, false].sample

# if process_the_loop
#   loop do
#     puts "The loop was processed!"
#     break
#   end
# else
#   puts "The loop wasn't processed!"
# end

# loop do
#   puts "What does 2 + 2 equal?"
#   answer = gets.to_i

#   break puts "That's correct!" if answer == 4
#   puts "Wrong answer. Try again!"
# end

# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
#   if answer == 4
#     puts "That's correct!"
#     break
#   else
#     puts "Wrong answer. Try again!"
#   end
# end

# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i

#   if answer == 4
#     puts "That's correct!"
#     break
#   end
  
#   puts "Wrong answer. Try again!"
# end

# numbers = []

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
  
#   numbers << input
#   break if numbers.size == 5
# end

# p numbers

# numbers = []

# loop do
#   puts 'Enter any number:'
#   numbers.push(gets.to_i)
#   break if numbers.size == 5
# end

# p numbers

# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names.shift
#   break if names.empty?
# end


# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names.pop
#   break if names.empty?
# end

# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names
#   break names.clear
# end

# p names

# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names.reverse
#   break names.clear
# end

# p names

# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop do
#   puts names.shift
#   break if names == []
# end

# p names

# names = ['Sally', 'Joe', 'Lisa', 'Henry']

# loop { break names.clear unless puts names }

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

# 5.times do |index|
#   break puts index if (index = 2)
# end

# number = 0

# until number == 10
#   number += 1
#   next if number.odd?
#   puts number
# end

# number = 0

# until number == 10
#   number += 1
#   puts number
# end

# number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)

#   break puts "5 was reached!" if number_a == 5 || number_b == 5
#   next
# end

# number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)

#   next unless number_a == 5 || number_b == 5
#   break puts "5 was reached!" 
# end

# number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)

#   if number_a == 5 || number_b == 5
#     break puts "5 was reached!"
#   end
# end

# def greeting
#   puts 'Hello!'
# end

# number_of_greetings = 2

# while number_of_greetings > 0
#   greeting
#   number_of_greetings -= 1
# end

# def greeting
#   puts 'Hello!'
# end

# number_of_greetings = 2

# while number_of_greetings
#   number_of_greetings.times { greeting}
#   number_of_greetings = false
# end

# puts ">> Type anything you want:"
# text = gets.chomp
# puts text

# puts "What is your age in years?"
# age = gets.to_i

# puts "You are #{age * 12} months old."

# puts ">> Do you want me to print something? (y/n)"
# answer = gets.chomp

# puts "something" if answer == 'y'

# puts ">> Do you want me to print something? (y/n)"
# answer = gets.chomp

# puts "something" if answer == 'y'|| answer == 'Y'

# puts ">> Do you want me to print something? (y/n)"
# answer = gets.chomp.downcase

# puts "something" if answer == 'y'

# loop do
#   puts ">> Do you want me to print something? (y/n)"
#   choice = gets.chomp.downcase

#   if choice == 'y'
#     puts "something"
#     break
#   elsif choice == 'n'
#     break
#   else
#     puts ">> Invalid input. Please enter y or n"
#   end
# end

# loop do
#   puts ">> Do you want me to print something? (y/n)"
#   choice = gets.chomp.downcase

#   break puts "something" if choice == 'y'
#   break                  if choice == 'n'

#   puts ">> Invalid input. Please enter y or n"
# end

# choice = nil

# loop do
#   puts ">> Do you want me to print something? (y/n)"
#   choice = gets.chomp.downcase

#   break if %w(y n).include?(choice)
 
#   puts ">> Invalid input. Please enter y or n"
# end

# puts "something" if choice == 'y'

# loop do
#   puts ">> How many output lines do you want? Enter a number >= 3:"
#   lines = gets.to_i

#   next puts ">> That's not enough lines." if lines <= 2

#   lines.times { puts 'Launch School is the best!' }
#   break
# end

# lines = nil

# loop do
#   puts ">> How many output lines do you want? Enter a number >= 3:"
#   lines = gets.to_i

#   break if lines >= 3

#   puts ">> That's not enough lines."
# end

# lines.times { puts 'Launch School is the best!' }

# loop do
#   puts ">> How many output lines do you want? Enter a number >= 3:"
#   lines = gets.to_i
#   break lines.times { puts 'Launch School is the best!' } if lines >= 3
#   puts ">> That's not enough lines."
# end

# loop do
#   puts ">> How many output lines do you want? Enter a number >= 3:"
#   lines = gets.to_i
  
#   if lines >= 3
#     lines.times { puts 'Launch School is the best!' }
#     break
#   end

#   puts ">> That's not enough lines."
# end

# PASSWORD = 'SecreT'

# loop do
#   puts ">> Please enter your password:"
#   password = gets.chomp

#   break puts "Welcome!" if password == PASSWORD
#   puts ">> Invalid password!"
# end

# USERNAME = 'admin'
# PASSWORD = 'SecreT'

# loop do
#   puts ">> Please enter user name:"
#   username = gets.chomp

#   puts ">> Please enter your password:"
#   password = gets.chomp

#   break if username == USERNAME && password == PASSWORD
#   puts ">> Authorization failed!"
# end

# puts "Welcome!"

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# def display_divide(num1, num2)
#   num1 = num1.to_i
#   num2 = num2.to_i
#   puts ">> #{num1} / #{num2} is #{num1 / num2}"
# end

# def display_integer_error
#   puts ">> Invalid input. Only integers are allowed."
# end

# def display_zero_error
#   puts ">> Invalid input. A denominator of 0 is not allowed."
# end

# numerator = nil
# loop do
#   puts ">> Please enter the numerator:"
#   numerator = gets.chomp
  
#   break if valid_number?(numerator)
#   display_integer_error
# end

# denominator = nil
# loop do
#   puts ">> Please enter the denominator:"
#   denominator = gets.chomp

#   next display_zero_error if denominator == '0'
#   next display_integer_error unless valid_number?(denominator)

#   break
# end

# puts display_divide(numerator, denominator)

# loop do
#   puts ">> How many output lines do you want? Enter a number >= 3 (Q to quit):"
#   lines = gets.chomp.downcase

#   if lines == 'q'
#     break
#   elsif lines.to_i <= 2
#     puts ">> That's not enough lines."
#   else
#     lines.to_i.times { puts "Launch School is the best!" }
#   end
# end

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string && number_string.to_i != 0
# end

# loop do
#   num1 = nil
#   loop do
#     puts ">> Please enter a positive or negative integer:"
#     num1 = gets.chomp

#     break num1 = num1.to_i if valid_number?(num1)
#     puts ">> Invalid input. Only non-zero integers are allowed"
#   end

#   num2 = nil
#   loop do
#     puts ">> Please enter a positive or negative integer:"
#     num2 = gets.chomp

#     break num2 = num2.to_i if valid_number?(num2)
#     puts ">> Invalid input. Only non-zero integers are allowed"
#   end

#   if num1 * num2 < 0
#     break puts "#{num1} + #{num2} = #{num1 + num2}"
#   else
#     puts ">> Sorry. One integer must be positive, one must be negative."
#     puts ">> Please start over."
#   end
# end
