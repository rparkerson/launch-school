# The following code outputs a countdown from 10 to 1. 
# Modify the code so that it counts from 1 to 10 instead.

# count = 10

# until count == 0
#   puts count
#   count -= 1
# end


count = 0

puts count += 1 until count > 9


#or
count = 0

until count > 9; puts(count +=1) end


#or
count = 1

until count == 11
  puts count
  count += 1
end


# # or
count = -1

until count == 9
  puts count += 2
  count -= 1
end
