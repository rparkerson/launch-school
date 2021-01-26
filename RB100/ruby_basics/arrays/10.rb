# In the code below, two arrays containing several numbers are assigned 
# to two variables, array1 and array2.

# array1 = [1, 5, 9]
# array2 = [1, 9, 5]

# Compare array1 and array2 and print true or false based on whether 
# they match.

puts array1 == array2

p array1.eql?(array2)

# comparing each element
array1 = [1, 5, 9]
array2 = [1, 9, 5]

p array1[0] == array2[0]
p array1[1] == array2[1]
p array1[2] == array2[2]

array1 = [1, 5, 9]
array2 = [1, 9, 5]

array1.each_with_index do |num, index|
  p num == array2[index]
end

array1.each_with_index { |num, index| p num == array2[index] }

array1 = [1, 5, 9]
array2 = [1, 9, 5]
