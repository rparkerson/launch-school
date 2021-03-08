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
# Better refactored version:
break puts numbers until false

# Not sure what is happening here(see below)
numbers = [7, 9, 13, 25, 18]

puts(numbers); break until false || true
# numbers is printed on its own. ";" is like a next line command.
# until then checks the logical or || and one is true so it evaluates to
# true.  Since the until true condition is met it is not run and break is
# never used.  if puts(numbers) was after break it would not execute either.

numbers = [7, 9, 13, 25, 18]

until numbers.length == 0 do puts numbers.shift end
#  Refactored:
puts numbers.shift until numbers.length == 0
