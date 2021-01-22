# Given the array of several numbers below, 
# use an until loop to print each number.

numbers = [7, 9, 13, 25, 18]

until numbers == []
  p numbers.shift
end

p numbers.shift until numbers == []

numbers = [7, 9, 13, 25, 18]
count = 0

until count > 4
  p numbers[count]
  count += 1
end


numbers = [7, 9, 13, 25, 18]

until false
  puts numbers 
  break
end

numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end


numbers = [7, 9, 13, 25, 18]

until false do puts(numbers); break end

# Not sure what is happening here
numbers = [7, 9, 13, 25, 18]

puts(numbers); break until false || true



numbers = [7, 9, 13, 25, 18]

until numbers.length == 0 do puts numbers.shift end