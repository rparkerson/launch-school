# countdown.rb

x = gets.chomp.to_i

# while x >= 0
#   puts x
#   x -= 1      # <- refactored this line ( was x = x - 1)
# end

# puts "Done!"


until x < 0
  puts x
  x -= 1
end

puts "Done again!"