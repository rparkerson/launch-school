require "pry"

# # boolean_regex.rb

# def has_a_b?(string)
#   if string =~ /b/
#     puts "We have a match!"
#   else
#     puts "No match here."
#   end
# end

# has_a_b?("basketball")
# has_a_b?("football")
# has_a_b?("hockey")
# has_a_b?("golf")

# boolean_matchdata.rb

# def has_a_b?(string)
#   if /b/.match(string)
#     puts "We have a match!"
#   else
#     puts "No match here."
#   end
# end

# has_a_b?("basketball")
# has_a_b?("football")
# has_a_b?("hockey")
# has_a_b?("golf")

# a = "hi there"
# b = a
# a = "not here"

# a = "hi there"
# b = a
# a << ", Bob"

# p b 

# def test(b)
#   c = b.map! {|letter| "I like the letter #{letter}"}
#   p c
# end

# a = ['a', 'b', 'c']
# test(a)
# p a

# passing_block.rb

# def take_block(&block)
#   block.call
# end

# take_block do 
#   puts "This block is being called in the method!"
# end

# take_block { puts "this is a better block in a method"}

# passing_block.rb

# def take_block(numberz, &block)
#   block.call(numberz)
# end

# number = 42
# take_block(number) do |num|
#   puts "Block being called in the method! #{num}"
# end

# proc_example.rb

# talk = Proc.new do
#   puts "I am talking"
# end

# talk.call

# proc_example.rb

# talk = Proc.new do |name|
#   puts "I am talking #{name}"
# end

# talk.call "Bob"

# def take_proc(number, proc)
#   proc.call(number)
# end

# number = 42

# talk = Proc.new do |num|
#   puts "Proc called in a method! #{num}"
# end 
# take_proc(number, talk) 

#passing_proc.rb

# def take_proc(proc)
#   [1, 2, 3, 4, 5].each do |number|
#     proc.call number
#   end
# end

# proc1 = Proc.new do |number1|
#   puts "#{number1}. Proc being called in the method!"
# end

# take_proc(proc1)

# exception_example.rb

# names = ['bob', 'joe', 'steve', nil, 'frank']

# names.each do |name|
#   begin
#     puts "#{name}'s name has #{name.length} letters in it"
#   rescue
#     puts "Something went HORRIBLY wrong!"
#   end
# end

# inline_exception_example.rb

# zero = 0
# puts "Before each call"
# zero.each { |element| puts element } rescue puts "Can't do that!"
# puts "After each call"

# divide.rb

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

# def greet(person)
#   puts "Hello, " + person
# end

# greet("John")
# greet(1)

def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, "  + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John")
decorate_greeting(1)