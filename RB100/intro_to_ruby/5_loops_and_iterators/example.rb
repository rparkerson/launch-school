require "pry"
# x = 0
# loop do
#   p x = x + 1
#   x < 5 || break
# end

# loop_example.rb

# loop do
#   puts "This will keep printing until you hit Ctrl + c"
#   binding.pry
# end

# useful_loop.rb

# i = 0

# loop do
#   i += 1
#   puts i
#   break   # this will cause execution to exit the loop
# end

# puts i   

# conditional_loop.rb

# i = 0
# loop do
#   i += 2
#   puts i
#   if i == 10
#     break    # this will cause execution to exit the loop
#   end
# end

# next_loop.rb

# i = 0
# loop do
#   i += 2
#   if i == 4
#     next    # skip rest of the code in this iteration
#   end
#   puts i
#   if i == 10
#     break
#   end
# end

# countdown.rb

# x = gets.chomp.to_i

# while x >= 0
#   puts x
#   x = x - 1
# end

# puts "Done!"

# x = gets.chomp.to_i

# while x >= 0
#   puts x
#   x -= 1     # <- refactored this line
# end

# puts "Done!"

# countdown.rb

# x = gets.chomp.to_i

# until x < 0
#   puts x
#   x -= 1
# end

# puts "Done!"

# perform_again.rb

# loop do
#   puts "Do you want to do that again?"
#   answer = gets.chomp
#   if answer != 'Y'
#     break
#   end
# end

# begin
#   puts "Do you want to do that again?"
#   answer = gets.chomp
#   end while answer == 'Y'     # Matz says this format is not recommended

# countdown3.rb

# x = gets.chomp.to_i

# for i in 1..x do  # do optional?
#   puts i
# end

# puts "Done!"

# countdown4.rb

# x = [1, 2, 3, 4, 5]

# for i in x do
#   puts i
# end

# puts "Done!"

# conditional_while_loop.rb

# x = 0

# while x <= 10
#   if x.odd?
#     puts x
#   end
#   x += 1
# end

# conditional_while_loop_with_next.rb

# x = 0

# while x <= 10
#   if x == 3
#     x += 1
#     next
#   elsif x.odd?
#     puts x
#   end
#   x += 1
# end

# conditional_while_loop_with_break.rb

# x = 0

# while x <= 10
#   if x == 7
#     break
#   elsif x.odd?
#     puts x
#   end
#   x += 1
# end

# practice_each.rb

# names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']

# names.each { |name| puts name }

# names = ['Bob', 'Joe', 'Steve', 'Janice', 'Susan', 'Helen']
# x = 1

# names.each do |name|
#   puts "#{x}. #{name}"
#   x += 1
# end

# def doubler(start)
#   puts start * 2
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
#     fibonacci(number - 1) + fibonacci(number - 2)
#   end
# end

# puts fibonacci(6)