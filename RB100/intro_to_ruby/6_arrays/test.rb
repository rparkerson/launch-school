require "pry"
# def mutate(arr)
#   arr.pop
# end

# def not_mutate(arr)
#   arr.select { |i| i > 3 }
# end

# a = [1, 2, 3, 4, 5, 6]
# mutate(a)
# not_mutate(a)

# puts a

# arr = [1, 3, 5, 7, 9, 11]
# number = 3

# if arr.include?(number) then puts "Number appears" end

# for i in arr do
#   if i == number
#     puts "#{number} is present"
#   end
# end

# arr.each_with_index do |num, index|
#   if num == 3
#     puts "#{3} is present at index: #{index}"
#   end
# end

# arr.each { |i| if i == number then puts "#{number} appears in array" end }

# new_arr = arr.select { |num| num == number }
# unless new_arr == [] then puts "Number is in the array" end

# arr = ["b", "a"]                # => ["b", "a"]
# arr = arr.product(Array(1..3)) 
# # => [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
# arr.first.delete(arr.first.last)
# # => 1 arr = [["b"], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]

# arr = ["b", "a"]
# arr = arr.product([Array(1..3)])
# # => [["b", [1, 2, 3]], ["a", [1, 2, 3]]]
# arr.first.delete(arr.first.last)
# # => [1, 2, 3]   arr = [["b"], ["a", [1, 2, 3]]]

# arr = [["test", "hello", "world"], ["example", "mem"]]

# arr[1][0]
# arr.last.first
# arr.fetch(1).fetch(0)
# arr.pop.shift   # mutates arr

# arr = [15, 7, 18, 5, 12, 8, 5, 1]

# arr.index(5)  # => 3

# arr.index[5]  # => raises error

# arr[5]        # => 8

# string = "Welcome to America!"
# a = string[6]      # => "e"
# b = string[11]     # => "A"
# c = string[19]     # => nil

# names = ['bob', 'joe', 'susan', 'margaret']
# names[3] = 'jody'
# p names 
# # thats not index reference it requires an index number to reference.

# arr = ["array", "of", "my", "creation"]

# arr.each_with_index { |value, index| puts "#{index}. #{value}" }

# array = [1, 2, 3, 4, 5, 6]

# arr = array.map { |num| num + 2 }

# arr = []
# array.each do |num|
#   arr << (num + 2)
# end

# p array
# p arr

# array.length