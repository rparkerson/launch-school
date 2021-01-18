# def say(words='hello')
#  puts words + '.' ## <= We only make the change here!
# end

# say("hello")
# say("hi")
# say("how are you")
# say("I'm fine")
# say

# a = 5

# def some_method
#   a = 3
# end

# puts a

# Method invocation with a block

# [1, 2, 3].each do |num|
#   puts a = num
# end

# Method definition

# def print_num(num)
#   puts num
# end

# def some_method(number)
#   number = 7        # this is implicitly returned by the method
#   puts number
# end

# a = 5
# some_method(a)
# puts a

# a = [1, 2, 3]

# # Example of a method definition that will modify its argument permanently
# def mutate(array)
#   array.Array.pop
# end

# p "Before mutate method: #{a}"
# p mutate(a)
# p "After mutate method: #{a}"

# def add_three(number)
#   number = number + 3
#   number + 4
# end

# returned_value = add_three(4)
# puts returned_value

# def just_assignment(number)
#   foo = number + 3
# end

# p just_assignment(2)

# def add_three(n)
#   n + 3
# end

# add_three(5).times { puts 'this should print 8 times' }

# p "hi there".length.to_s

# def add_three(n)
#   new_value = n + 3
#   puts new_value
#   new_value
# end

# add_three(5).times { puts "will this work?" }
# add_three(5)

# def add(a, b)
#   a + b
# end

# def subtract(a, b)
#   a - b
# end

# p add(20, add(20, 25))
# p subtract(80, 10)

# def multiply(num1, num2)
#   num1 * num2
# end

# p multiply(add(20, 45), subtract(80, 10))
# p add(subtract(80, 10), multiply(subtract(20, 6), add(30,5)))

# def first
#   puts "first method"
# end

# def second
#   first
#   puts "second method"
# end

# second
# puts "main method"

# def endless(infinity)
#   endless(infinity)
# end
# endless(3)  # 10908 levels