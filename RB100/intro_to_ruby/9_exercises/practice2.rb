require 'pry'

# mkdir my_folder
# cd my_folder
# touch one.rb two.rb
# echo "puts 'this is file one'" > one.rb
# echo "puts 'this is file two'" > two.rb

# puts 'this is practice2'

# cd ..
# rm -r my_folder

# p "Firstname" + " Lastname"

# firstname = "John"
# lastname = "Doe"

# p "#{firstname} #{lastname}"

# def display_digit_places(num)
#   puts "thousands: #{num / 1000}"
#   puts "hundreds: #{num % 1000 / 100}"
#   puts "tens: #{num % 100 / 10}"
#   puts "ones: #{num % 10}"
# end

# display_digit_places(1234)
# display_digit_places(0000)

# movies = {
#   movie_1: 1975,
#   movie_2: 2004,
#   movie_3: 2013,
#   movie_4: 2001,
#   movie_5: 1981
# }

# puts movies.values

# movie_years = [1975, 2004, 2013, 2001, 1981]
# puts movie_years
# p movie_years
# puts movie_years[0]
# puts movie_years[1]
# puts movie_years[2]
# puts movie_years[3]
# puts movie_years[4]

# def factorial(num)
#   return 1 if num == 0
#   num * factorial(num - 1)
# end

# p factorial(5)
# p factorial(6)
# p factorial(7)
# p factorial(8)

# def square_float(float)
#   float**2
# end
# p square_float(2.0)
# p square_float(3.0)
# p square_float(16.0)

=begin
SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
  from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'
This error messages tells us there is trouble afoot. On `line 2` there is a
syntax error and looks like the curley braces was left off and a closing
parenthesis was used. This could have been a hash e.g {key: "value")
=end
# {key: "value")

# puts "What is your name, please?"
# name = gets.chomp
# puts "Greetings, #{name}!"

# puts "How old are you?"
# age = gets.chomp
# increment = 10

# 4.times do
#   puts "In #{increment} years you will be:\n#{age.to_i + increment}"
#   increment += 10
# end

# puts "What is your name, please?"
# name = gets.chomp

# 10.times { puts name }

# puts "What is your first name, please?"
# first_name = gets.chomp

# puts "What is your last name, please?"
# last_name = gets.chomp

# puts "Greetings, #{first_name} #{last_name}!"

=begin
In example 1 x prints 3 and in the second example an error is raised
because the local variable `x` is undefined outside of the block. 
=end

# def greeting(name)
#   "Greetings, #{name}!"
# end

# puts greeting("Bob")

# 1. x = 2
# 2
# 2. puts x = 2
# nil
# 3. p name = "Joe"
# "Joe"
# 4. four = "four"
# "four"
# 5. print something = "nothing"
# nil

# def multiply(num1, num2)
#   num1 * num2
# end

# puts multiply(2, 3)

# def scream(words)
#   words = words + "!!!!"
#   puts words
# end

# scream("Yippeee")

# This does not print anything to the screen and returns a new string object
# "Yippeee!!!!"

=begin
ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

This error message above is an error for the `calculate_product` method
call on line 4, which passed in the wrong number of arguments; 1 instead
of 2.
=end

# (32 * 4) >= 129 # false

# false != !true # false

# true == 4 # false

# false == (847 == '874') # true

# (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false # true

# def cap_str(str)
#   str.size > 10 ? str.upcase : str
# end

# p cap_str("hello world")
# p cap_str("no cap")

# puts "Pick a number between 0 and 100."
# num = gets.chomp.to_i

# case
# when (0..50).include?(num)
#   puts "#{num} is between 0 and 50."
# when (51..100).include?(num)
#   puts "#{num} is between 51 and 100."
# when num > 100
#   puts "#{num} is above 100."
# else
#   puts "#{num} is not between 0 and 100."
# end

# puts "Pick a number between 0 and 100."
# num = gets.chomp.to_i

# case num
# when 0..50 then
#   puts "#{num} is between 0 and 50."
# when 51..100 then
#   puts "#{num} is between 51 and 100."
# when 100.. then
#   puts "#{num} is above 100."
# else
#   puts "#{num} is not between 0 and 100."
# end

# # Snippet 1
# '4' == 4 ? puts("TRUE") : puts("FALSE") # output "FALSE" => nil

# # Snippet 2
# x = 2
# if ((x * 3) / 2) == (4 + 4 - x - 3)
#   puts "Did you get it right?"
# else
#   puts "Did you?"
# end
# # output: "Did you get it right?" => nil

# # Snippet 3
# y = 9
# x = 10
# if (x + 1) <= (y)
#   puts "Alright."
# elsif (x + 1) >= (y)
#   puts "Alright now!"
# elsif (y + 1) == x
#   puts "ALRIGHT NOW!"
# else
#   puts "Alrighty!"
# end
# # outputs "Alright now!" => nil

=begin
When you run the following code...

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)

You get the following error message..

exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end

Why do you get this error and how can you fix it?
The if statment on `lines 2-5` is missing an end keyword at the end of it
based on the indentation, Ruby interprets the `equal_to_four` method definition
as missing the end keyword, since the end is matched to the `if..else` statement
on `line 6`. In either case we need to add an `end` to close the
if statement or method definition. The fix is implemented below
=end

# def equal_to_four(x)
#   if x == 4
#     puts "yup"
#   else
#     puts "nope"
#   end
# end

# equal_to_four(5)

# (32 * 4) >= "129" # false
# 847 == '874' # false
# '847' < '846' # false
# '847' > '846' # true
# '847' > '8478' # false
# '847' < '8478' # true

# def doubler(start)
#   return start if start >= 32
#   puts start * 2
#   doubler(start * 2)
# end

# doubler(2)

# def doubler(start)
#   puts start
#   if start < 10
#     doubler(start * 2)
#   end
# end

# doubler(2)

# def fibonacci(num)
#   return num if num < 2
#   fibonacci(num - 1) + fibonacci(num - 2)
# end

# p fibonacci(6)


# def fibonacci(number)
#   if number < 2
#     number
#   else
#     fibonacci(number - 1) + fibonacci(number - 2)
#   end
# end

# puts fibonacci(6)

# x = [1, 2, 3, 4, 5]
# x.each do |a|
#   a + 1
# end

# answer = ''
# while answer != "STOP"
#   puts "How are you tody?"
#   answer = gets.chomp
# end

# x = ""
# while x != "STOP" do
#   puts "Hi, How are you feeling?"
#   ans = gets.chomp
#   puts "Want me to ask you again?"
#   x = gets.chomp
# end

# def countdown(num)
#   puts num
#   countdown(num - 1) if num > 0
# end

# countdown(5)

# arr = [1, 3, 5, 7, 9, 11]
# number = 3

# p arr.include?(number)

# p arr.any? { |num| num == number }

# result = arr.select { |num| num == number }.empty?
# p !result

# arr.each { |num| puts "#{number} is in the array." if num == number }

# puts "#{number} is in the array." if arr.index(3) != nil

# 1. arr = ["b", "a"]
#    arr = arr.product(Array(1..3)) 
#    # arr: [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
#    # => [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
#    arr.first.delete(arr.first.last)
#   # arr: [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
#   # => 1

# 2. arr = ["b", "a"]
#    arr = arr.product([Array(1..3)]) # [[1, 2, 3]]
#    # arr: [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
#    # => [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
#    arr.first.delete(arr.first.last)
#    #  # [1, 2, 3]
#    # => [["b"], ["a", [1, 2, 3]]]

# arr = [["test", "hello", "world"],["example", "mem"]]
# p arr[1][0]
# p arr.last.first

# arr = [15, 7, 18, 5, 12, 8, 5, 1]

# 1. arr.index(5) # => 3

# 2. arr.index[5] # => raise an exception - NoMethodError - undefined method []

# 3. arr[5]       # => 8

# string = "Welcome to America!"
# a = string[6]
# b = string[11]
# c = string[19]

# p a # "e"
# p b # "A"
# p c # nil
# p string.chars

# names = ['bob', 'joe', 'susan', 'margaret']
# names[-1] = 'jody'
# p names
# # the `[]=` element assignment array method takes an integer within the [] as
# # an argument that represents the index, not a string, as in the example.
# names[4] = "Bobby"
# p names
# names[6] = "Dropped as a baby"
# p names

# arr = [1, 2, 3, 4, 5, "panda"]
# arr.each_with_index { |ele, index| puts "value: #{ele} at index #{index}" }

# arr1 = [1, 2, 3, 4, 5, "panda"]
# arr2 = arr1.map { |num| num.to_i + 2 }
# p arr1
# p arr2

# family = {  uncles: ["bob", "joe", "steve"],
#             sisters: ["jane", "jill", "beth"],
#             brothers: ["frank","rob","david"],
#             aunts: ["mary","sally","susan"]
#           }

# immediate_family = family.select do |title, _|
#    title == :sisters || title == :brothers
# end

# p immediate_family = immediate_family.values

# family = {  uncles: ["bob", "joe", "steve"],
#             sisters: ["jane", "jill", "beth"],
#             brothers: ["frank","rob","david"],
#             aunts: ["mary","sally","susan"]
#           }
# immediate_family = family.select do |title, _|
#   title == :sisters || title == :brothers
# end
# new_arr = immediate_family.values.flatten
# p immediate_family
# p new_arr

=begin
Look at Ruby's merge method. Notice that it has two versions. What is the
difference between merge and merge!? Write a program that uses both and
illustrate the differences.

The `merge` method returns a new hash object and the `merge!` mutates the 
calling hash.
=end

# family = {  uncles: ["bob", "joe", "steve"],
#             sisters: ["jane", "jill", "beth"],
#             brothers: ["frank","rob","david"],
#             aunts: ["mary","sally","susan"]
#           }
# more_family = {mother: "nancy", father: "frank" }
# puts "#{family} with object_id: #{family.object_id}"
# puts "#{more_family} with object_id: #{more_family.object_id}"

# family.merge(more_family)

# puts "#{family} with object_id: #{family.object_id}"
# puts "#{more_family} with object_id: #{more_family.object_id}"

# puts

# family = {  uncles: ["bob", "joe", "steve"],
#             sisters: ["jane", "jill", "beth"],
#             brothers: ["frank","rob","david"],
#             aunts: ["mary","sally","susan"]
#           }
# more_family = {mother: "nancy", father: "frank" }
# puts "#{family} with object_id: #{family.object_id}"
# puts "#{more_family} with object_id: #{more_family.object_id}"

# family.merge!(more_family)

# puts "#{family} with object_id: #{family.object_id}"
# puts "#{more_family} with object_id: #{more_family.object_id}"

=begin
Using some of Ruby's built-in Hash methods, write a program that loops
through a hash and prints all of the keys. Then write a program that
does the same thing except printing the values. Finally, write a program
that prints both.
=end
# hash = { key: "value", symbol: "string" }

# hash.each { |k, _| puts k }
# hash.each { |_, v| puts v }
# hash.each { |k, v| puts k; puts v }
# hash.each { |pair| puts pair }

# person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

# p person[:name]

# person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
# p person.key("Bob")
# p person.key('Not Bob')

# person.each { |key, value| puts "Yes" if value == "Not Bob"}
# p person.any? { |key, value| value == "Bob" }

# p person.has_value?("Bob")

# x = "hi there"
# my_hash = {x: "some value"}
# my_hash2 = {x => "some value"}
# my_arr = [x]
# p my_hash.key("some value")
# p my_hash2.key("some value").object_id
# p x.object_id
# p my_arr
# x.upcase!
# p x
# p my_hash2
# p my_arr

=begin
What's the difference between the two hashes that were created?
The `my_hash` uses a symbol as a key :x and uses a different syntax to
assign the string "some value" as the value available to symbols
`x: "some value"`. The variable `my_hash2` is assigned to a hash that is using
the string `"hi there"` value which the variable `x` references as the key and the
same value, but different string object, `"some Value"` as the value. 

Note that initializing a hash with a variable reference does not use the
same object (different object id's) but only the value as a new object.
This is different from than an array.
=end

# my_arr = ['some', 'thing']
# my_arr.keys('some')

# def take_block(&block)
#   number = 3
#   block.call(number)
# end

# number = 42
# take_block do |num|
#   puts "Block being called in the method! #{number}"
#   puts num
# end
# proc_example.rb

# talk = Proc.new do
#   puts "I am talking."
# end

# talk.call

# talk = Proc.new do |name|
#   puts "I am talking to #{name}"
# end

# talk.call "Bob"

# def take_proc(proc)
#   [1, 2, 3, 4, 5].each do |number|
#     proc.call()
#   end
# end

# proc = Proc.new do |number|
#   puts "#{number}. Proc being called in the method!"
# end

# take_proc(proc)

# exception_example.rb

# names = ['bob', 'joe', 'steve', nil, 'frank']

# names.each do |name|
#   begin
#     puts "#{name}'s name has #{name.length} letters in it."
#   rescue
#     puts "Something went wrong!"
#   end
# end

# def divide(number, divisor)
#   begin
#     answer = number / divisor
#   rescue ZeroDivisionError => e
#     puts e.message
#   end
# end

# puts divide(16, 4)
# puts divide(4, 0)
# puts divide(14, 7)

# def space_out_letters(person)
#   return person.split("").join(" ")
# end

# def greet(person)
#   return "H e l l o, " + space_out_letters(person)
# end

# def decorate_greeting(person)
#   puts "" + greet(person) + ""
# end

# decorate_greeting("John")
# decorate_greeting(1)

# p "laboratory" if "laboratory".include?("lab")
# p "experiment" if "experiment".include?("lab")
# p "Pans Labyrinth" if "experiment".include?("lab")
# p "elaborate" if "elaborate".include?("lab")
# p "polar bear" if "polar bear".include?("lab")

# words = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

# words.each do |word|
#   puts word if word =~ /lab/
# end

# words.each do |word|
#   puts word if /lab/.match(word)
# end

# def execute(&block)
#   block
# end

# execute { puts "Hello from inside the execute method!" }
# this does not print anything and returns a proc object.

=begin
What is exception handling and what problem does it solve?
Exception handling is handling the errors or exceptions that are raised
when a program is executed. This solves the problem of the program stopping
completely and can instead run a different branch of code and keep running.

Exception handling is a structure used to handle the possibility of an error
occurring in a program. It is a way of handling the error by changing the
flow of control without exiting the program entirely.
=end

# def execute(&block)
#   block.call
# end

# execute { puts "Hello from inside the execute method!" }

# def execute(&block)
#   block.call
# end

# execute { puts "Hello from inside the execute method!" }

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# arr.each { |num| puts num}

# arr.each { |num| puts num if num > 5 }

# new_arr = arr.select { |num| num.odd? }
# p new_arr

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# arr << 11 # or arr.push(11)
# arr.unshift(0)
# p arr

# arr.pop
# arr.push(3)
# p arr

# arr.uniq!
# p arr

=begin
What's the major difference between an Array and a Hash?

The major difference is how they reference the elements in the collection.
In arrays the elements are referenced by an ordered list of numbers, the index.
In hashes the elements are the key value pairs referenced by the key.
=end

# hash1 = { key: 'value' }
# hash2 = { :key => 'value' }
# p hash1
# p hash2
# p hash1 == hash2

# h = {a:1, b:2, c:3, d:4}
# p h[:b]
# p h
# h.merge!({e:5}) # h[:e] = 5
# p h
# # h.delete_if { |_, v| v < 3.5 }
# h.each { |k, v| h.delete(k) if v < 3.5 }
# p h

# Can hash values be arrays? Can you have an array of hashes? (give examples)
# Yes; {key: ['array', 'as', 'value']}
# Yes; [{a: 'array'}, {b: 'of'}, {c: 'hashes'}]

# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# keys = [:email, :address, :phone]

# contacts["Joe Smith"][:email] = contact_data[0][0]
# contacts["Joe Smith"][:address] = contact_data[0][1]
# contacts["Joe Smith"][:phone] = contact_data[0][2]
# contacts["Sally Johnson"][:email] = contact_data[1][0]
# contacts["Sally Johnson"][:address] = contact_data[1][1]
# contacts["Sally Johnson"][:phone] = contact_data[1][2]

# p contacts

# p contacts["Joe Smith"][:email]
# p contacts["Sally Johnson"][:phone]

# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
# p arr

# arr.delete_if { |word| word.start_with?("s") }
# p arr

# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
# p arr

# arr.delete_if { |word| word.start_with?("s", "w") }
# p arr

# a = ['white snow', 'winter wonderland', 'melting ice',
#      'slippery sidewalk', 'salted roads', 'white trees']
# p a.map { |words| words.split }.flatten

# hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
# hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

# if hash1 == hash2
#   puts "These hashes are the same!"
# else
#   puts "These hashes are not the same!"
# end
# This is output "These hashes are the same!" the order or the different
# syntax in creating the hash do not make a difference in the == comparison.

# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#                 ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# keys = [:email, :address, :phone]
# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = {"Joe Smith" => {}}

# contact_data.each_with_index do |data, index|
#   contacts["Joe Smith"][keys[index]] = data
# end

# p contacts

# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#                 ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
# keys = [:email, :address, :phone]

# contacts.each_with_index do |(_, hash), index|
#   contact_data[index].each_with_index do |data, idx|
#     hash[keys[idx]] = data
#   end
# end

# p contacts
