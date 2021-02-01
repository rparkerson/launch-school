# new style roman numeral
# if smaller number in front you subtract
# 4 9 are different 40's 90s 400's 900's 4000's 9000's


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
