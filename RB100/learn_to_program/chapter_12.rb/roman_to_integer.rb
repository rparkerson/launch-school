#  create a method that takes a roman numeral (modern)
# up to around 3000 or so
# reject invalid roman numeral strings
# example 'mcmxcix' is 1999
# I = 1
# V = 5
# X = 10
# L = 50
# C = 100
# D = 500
# M = 1000
# input string in roman numerals and output integer
# mental model - seperate different places and add them together
# go through the string and if the string is less than than
# the one before subtract it then continue and add them
# check intiallialy if it is a valid number

### integer to roman numeral method
def roman_numeral(number)
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
    if hundreds == 9
      arr.push 'CM'
      hundreds = hundreds - 9
    elsif hundreds == 4
      arr.push 'CD'
      hundreds = hundreds - 4
    elsif hundreds >= 5
      arr.push 'D'
      hundreds = hundreds - 5
    else
      arr.push 'C'
      hundreds = hundreds - 1
    end
  end

  while tens > 0
    if tens == 9
      arr.push 'XC'
      tens = tens -9
    elsif tens == 4
      arr.push 'XL'
      tens = tens - 4
    elsif tens >= 5
      arr.push 'L'
      tens = tens - 5
    else
      arr.push 'X'
      tens = tens - 1
    end
  end

  while ones > 0
    if ones == 9
      arr.push 'IX'
      ones = ones - 9
    elsif ones == 4
      arr.push 'IV'
      ones = ones - 4
    elsif ones >= 5
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
puts roman_numeral(answer)

def rom_num_to_int(numeral)
  numeral  = numeral.downcase
  num_hash = {'i' =>    1,
              'v' =>    5,
              'x' =>   10,
              'l' =>   50,
              'c' =>  100,
              'd' =>  500,
              'm' => 1000}
  count = 0
  total = 0
  while numeral.length >= count
    if (num_hash[numeral[count]] == nil) &&  (num_hash[numeral[count + 1]] == nil)
      break
    elsif num_hash[numeral[count + 1]] == nil
      total = total + num_hash[numeral[count]]
      break
    elsif num_hash[numeral[count]] >= num_hash[numeral[count + 1]]
      total = total + num_hash[numeral[count]]
      count = count + 1
    else
      total = total + (num_hash[numeral[count + 1]] - num_hash[numeral[count]]) 
      count = count + 2
    end
  end
  
  if roman_numeral(total).downcase == numeral
    return total
  else
    'Please pick a valid roman-numeral'
  end
end

puts 'Pick a roman numeral between 1 and 3000'
answer = gets.chomp
puts rom_num_to_int(answer)
