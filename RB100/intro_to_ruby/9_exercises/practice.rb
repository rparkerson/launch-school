require "pry"

# a = [1, 2, 3]
# a << 4
# binding.pry # execution will pause here, allowing you to inspect all objects
# puts a

# (32 * 4) >= 129 # f
# false != !true   # f
# true == 4        # f
# false == (847 == '874')  # t
# (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false # t

# def all_caps(string)
#   return string.upcase if string.length > 10
#   string
# end

# p all_caps("hello world")
# p all_caps("not 10")

# puts "pick a number 0 - 100"
# number = gets.to_i

# if number < 0
#   puts "Pick a positive number"
# elsif number <= 50
#   puts "Your number is between 0 and 50"
# elsif number <= 100
#   puts "Your number is between 51 and 100"
# else
#   puts "Your number is above 100"
# end

# # Snippet 1
# '4' == 4 ? puts("TRUE") : puts("FALSE")  # FALSE

# # Snippet 2
# x = 2
# if ((x * 3) / 2) == (4 + 4 - x - 3)
#   puts "Did you get it right?"      # Did you get it right?
# else
#   puts "Did you?"
# end

# # Snippet 3
# y = 9
# x = 10
# if (x + 1) <= (y)
#   puts "Alright."
# elsif (x + 1) >= (y)
#   puts "Alright now!"             # Alright now!
# elsif (y + 1) == x
#   puts "ALRIGHT NOW!"
# else
#   puts "Alrighty!"
# end

# def equal_to_four(x)
#   if x == 4
#     puts "yup"
#   else
#     puts "nope"
#   end
# end

# equal_to_four(5)
 
# (32 * 4) >= "129"  # error typeerror comparing int to string
# 847 == '874'       # false
# '847' < '846'      # f
# '847' > '846'      # t
# '847' > '8478'     # f
# '847' < '8478'     # t

# x = gets.to_i

# a = while x >=0
#   puts x
#   x -= 1
# end
# p a

# for i in 1..x do
#   puts i
# end

# puts "Done!"

# p i


# x = [1, 2, 3, 4, 5]

# for i in x do
#   puts i
# end
# puts "done!"

# x = -1

# while x <= 9
#   x += 1
#   if x == 3
#     next
#   elsif x.odd?
#     puts x
#   end
# end

# def doubler(start)
#   puts start
#   if start < 10
#     doubler(start * 2)
#   end
# end

# fibonacci.rb

# def fibonacci(number)
#   if number < 2
#     number
#   else
#     fibonacci(number -1) + fibonacci(number -2)
#   end
# end

# puts fibonacci(6)
# puts fibonacci(3)

# x = [1, 2, 3, 4, 5]
# c=  x.each do |a|
#   a + 1
# end
# p c

# x = [1, 2, 3, 4, 5]
# p x.each { |a| a + 1}

# answer = 0
# while answer != 'STOP'
#   puts "Tell me when to stop"
#   answer = gets.chomp
# end

# def countdown(num)
#     p num
#   if num > 0
#     countdown(num - 1)
#   end
# end

# countdown(5)

# def countdown(num)
#   if num <= 0
#     puts num
#   else
#     puts num
#     countdown(num - 1)
#   end
# end

# countdown(5)
# countdown(-5)

# arr = [1, 3, 5, 7, 9, 11]
# number = 3

# puts "#{number} is in the array" if arr.include?(number)

# arr.each do |num| 
#   if number == num 
#     puts "#{number} is in the array"
#   end
# end

# # 1.
#    arr = ["b", "a"]
#    arr = arr.product(Array(1..3))
#    arr.first.delete(arr.first.last) # => 1
   

# # 2. 
#    arr = ["b", "a"]
#    arr = arr.product([Array(1..3)])
#    arr.first.delete(arr.first.last)  # => [1, 2, 3]

# arr = [["test", "hello", "world"],["example", "mem"]]

# p arr[1][0]
# p arr.last.first

# arr = [15, 7, 18, 5, 12, 8, 5, 1]

# arr.index(5) # 3

# arr.index[5] # error

# arr[5]       #  8

# string = "Welcome to America!"
# a = string[6]  # "e"
# b = string[11] # "A"
# c = string[19] # nil

# names = ['bob', 'joe', 'susan', 'margaret']
# names[3] = 'jody'

# numbers = [1, 2, 3, 4]

# numbers.each_with_index { |ele, index| p(index); p(ele) }

# array = [1, 2, 3, 4, 5]

# new_array = array.map { |n| n + 2 }

# p array
# p new_array

# array = [1, 2, 3, 4, 5]
# new_array = []

# array.each do |n|
#    new_array.push(n + 2)
# end

# p array
# p new_array

# Hashes

# family = {  uncles: ["bob", "joe", "steve"],
#             sisters: ["jane", "jill", "beth"],
#             brothers: ["frank","rob","david"],
#             aunts: ["mary","sally","susan"]
#           }

# new_array = family.select do |key, value|
#   key == :sisters || key == :brothers
# end

# p new_array

# merge returns a new hash while merge! modifies self so it is destructive

# hash = { key: "value" }
# hash2 = { name: "Bob" }
# hash.merge(hash2)
# p hash
# p hash2
# hash.merge!(hash2)
# p hash
# p hash2

# hash = { key: "Value", name: "Bob" }
# hash.each { |k, v| p k }
# hash.each { |k, v| p v }
# hash.each { |k, v| puts "#{k} #{v}" }

# person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
# p person[:name]

# person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
# p person.has_value?('Bob')

# x = "hi there"
# my_hash = {x: "some value"}
# my_hash2 = {x => "some value"}

# # the symbol :x is set to "some value" in my_hash
# # the value of x ("hi there") string is set to "some value" in my_hash2
# p my_hash
# p my_hash2

# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']
# hash = {}
# words.each do |word|
#   sorted_word = word.split('').sort.join
#   if hash.keys.include?(sorted_word)
#     hash[sorted_word] << word
#   else
#     hash[sorted_word] = [word]
#   end
# end

# hash.each { |k, v| p v }

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
# p greet("John")
# # decorate_greeting(1)

# def has_lab(string)
#   puts string if string.include?("lab")
# end

# has_lab("laboratory")
# has_lab("experiment")
# has_lab("Pans Labyrinth")
# has_lab("elaborate")
# has_lab("polar bear")

# def has_lab(string)
#   puts string if string =~ /lab/
# end

# has_lab("laboratory")
# has_lab("experiment")
# has_lab("Pans Labyrinth")
# has_lab("elaborate")
# has_lab("polar bear")

# def execute(&block)
#   block.call
# end

# execute { puts "Hello from inside the execute method!" }

# The Basics

# p "John " + "Doe"

# num = 1523

# thousands = num / 1000
# hundreds = num % 1000 / 10
# tens = % 100 / 10
# ones = % 10

# p thousands
# p hundreds
# p tens
# p ones 

# hash = {
#   mov1: 1975,
#   mov2: 2004,
#   mov3: 2013,
#   mov4: 2001,
#   mov5: 1981,
# }

# puts hash.values

# array = [
#   1975,
#   2004,
#   2013,
#   2001,
#   1981
# ] 

# puts array

# def factorial(num)
#   a = 1
#   (1..num).each { |i| a *= i }
#   p a
# end

# factorial(5)
# factorial(6)
# factorial(7)
# factorial(8)

# def square(num)
#   p num * num
# end

# square(6.2)
# square(9.9999)
# square(0.34)
# p Math::sqrt(6.2)

# Variables

# # name.rb
# puts "Please type in your name."
# answer = gets.chomp

# puts "Pleased to meet you, #{answer}!"

# age.rb

# puts "How old are you?"
# age = gets.to_i
# puts "In 10 years you will be:
# #{age + 10}"
# puts "In 20 years you will be:
# #{age + 20}"
# puts "In 30 years you will be:
# #{age + 30}"
# puts "In 40 years you will be:
# #{age + 40}"

# name.rb
# puts "Please type in your name."
# answer = gets.chomp
# puts "Pleased to meet you, #{answer}!"
# puts answer * 10
# 10.times { puts answer }

# puts "Please type in your first name."
# first_name = gets.chomp
# puts "Please type in your last name."
# last_name = gets.chomp
# puts "Nice to meet you #{first_name} #{last_name}!"

# x = 0
# 3.times do
#   x += 1
# end
# puts x

# y = 0
# 3.times do
#   y += 1
#   x = y
# end
# puts x

# def some_method(number)
#   number = 7 # this is implicitly returned by the method
# end

# a = 5
# p some_method(a)
# puts a

# a = [1, 2, 3]

# # Example of a method definition that modifies its argument permanently
# def mutate(array)
#   array.pop
# end

# puts "Before mutate method: #{a}"
# puts mutate(a)
# puts "After mutate method: #{a}"

# def add_three(number)
#   number + 3
# end

# returned_value = add_three(4)
# puts returned_value

# def first
#   puts "first method"
# end

# def second
#   first
#   puts "second method"
# end

# second
# puts "main method"

# def greeting(name)
#   "Hello, #{name}"
# end

# p greeting("Bob")

# x = 2

# puts x = 2

# p name = "Joe"

# four = "four"

# print something = "nothing"

# def multiply(num1, num2)
#   num1 * num2
# end

# p multiply(3, 6)

# def scream(words)
#   words = words + "!!!!"
#   p words
# end

# scream("Yippeee")

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# arr.each { |num| puts num if num > 5 }

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# new_arr = arr.select { |num| num.odd? }
# p new_arr

# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# arr.push(11)
# arr.unshift(0)
# p arr

# arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

# arr[11] = 3
# p arr

# arr.pop
# arr.push(3)
# p arr 

# arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]
# arr.uniq!
# p arr

# An array is an indexed list of elements and a hash has key value pairs
# array is more for order hash is usefull when you need values for
# something specific like a dictionary.

# hash1 = {key: 'value'}
# hash2 = {:key => 'value'}
# puts hash1
# puts hash2
# puts hash1 == hash2

# h = {a:1, b:2, c:3, d:4}
# p h[:b]
# h[:e] = 5
# p h



# h.delete_if { |k, v| v < 3.5 }
# p h

# h.each { |k, v| h.delete(k) if v < 3.5 }
# p h

# yes and yes
# hash = {key: ['array'], sym: ['arr']}
# array_of_hashes = [{key: 'value'}, {key: ['array']}]

# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# contacts["Joe Smith"][:email] = contact_data[0][0]
# contacts["Joe Smith"][:address] = contact_data[0][1]
# contacts["Joe Smith"][:phone] = contact_data[0][2]
# contacts["Sally Johnson"][:email] = contact_data[1][0]
# contacts["Sally Johnson"][:address] = contact_data[1][1]
# contacts["Sally Johnson"][:phone] = contact_data[1][2]

# p contacts["Joe Smith"][:email]
# p contacts["Sally Johnson"][:phone]

# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# arr.delete_if { |ele| ele.start_with?('s') }
# p arr

# arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# arr.delete_if { |ele| ele.start_with?('s', 'w') }
# p arr

# a = ['white snow', 'winter wonderland', 'melting ice',
#      'slippery sidewalk', 'salted roads', 'white trees']

# arr = a.map { |ele| ele.split }.flatten
# p arr

# hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
# hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

# if hash1 == hash2
#   puts "These hashes are the same!"
# else
#   puts "These hashes are not the same!"
# end

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

# Expected output:
# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = {"Joe Smith" => {}}

# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = {"Joe Smith" => {}}
# keys = [:email, :address, :phone]

# contacts.each do |key, value|
#   contact_data.each_with_index do |field, index|
#     p value[keys[index]] = field
#   end
# end
# p contacts

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
# keys = [:email, :address, :phone]

# Redundant solution
# contacts.each do |key, value|
#   if key == "Joe Smith"
#     contact_data[0].each_with_index do |field, index|
#         value[keys[index]] = field
#     end
#   else
#     contact_data[1].each_with_index do |field, index|
#       value[keys[index]] = field
#     end
#   end
# end
# p contacts

# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
# fields = [:email, :address, :phone]

# contacts.each_with_index do |(key, value), index|
#   fields.each do |field|
#     value[field] = contact_data[index].shift
#   end
# end
# p contacts
