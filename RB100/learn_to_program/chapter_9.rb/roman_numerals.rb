# write a method that accepts an integer as a parameter 
# (between 1 and 3000) or so 
# output a string containing the proper old school roman numberal
# example old_roman_numeral 4  => 'IIII'
#  hint: can use int division and modulus methods
#
# mental model
# break down the number into 1's, 10, 100's, and 1000's
# covert those to values into letters and combine from biggest to smallest

# I = 1
# V = 5
# X = 10
# L = 50
# C = 100
# D = 500
# M = 1000


def old_roman_numeral(number)
  thousands = number / 1000 
  hundreds = number % 1000 / 100
  tens = number % 100 / 10
  ones = number % 10
  numbers = [thousands, hundreds, tens, ones]
  arr = []

  thousands.times do |num|
    arr.push 'M'
  end

  while hundreds > 0
    if hundreds >= 5
      arr.push 'D'
      hundreds = hundreds - 5
    else
      arr.push 'C'
      hundreds = hundreds - 1
    end
  end

  while tens > 0
    if tens >= 5
      arr.push 'L'
      tens = tens - 5
    else
      arr.push 'X'
      tens = tens - 1
    end
  end

  while ones > 0
    if ones >= 5
      arr.push 'V'
      ones = ones - 5
    else
      arr.push 'I'
      ones = ones - 1
    end
  end

  arr.join 
end

puts 'Pick a number between 1 and 9999'
answer = gets.to_i
puts old_roman_numeral(answer)
