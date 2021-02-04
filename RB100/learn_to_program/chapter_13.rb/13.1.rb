#  build method that takes an array and returns a shuffled array
#  

#  Add shuffle_array to Array class
class Array
  def shuffle_array
    shuf = []
    arr = self
    while arr.length > 0
      #  Randomly pick one element of the array
      rand_index = rand(arr.length)
      
      #  Now go through each item in the array
      #  putting them all into new_arr except for the
      #  randomly choosen one, which goes into shuff
      cur_index = 0
      new_arr = []

      arr.each do |item|
        if cur_index == rand_index
          shuf.push(item)
        else
          new_arr.push item
        end

        cur_index = cur_index + 1
      end
      #  Replace the original array with the new,
      #  smaller array.
      arr = new_arr
    end
    shuf
  end
end
array = ['goat', 'apple', 'dog', 'cat', 'zebra', 'gorilla']
puts array.shuffle_array

# Add factorial method to Integer class
class Integer
  def factorial
    num = self
    if num < 0
      return 'You can\'t take the factorial of a negative number!'
    end
    
    if num <= 1
      1
    else
      num * (num-1).factorial
    end
  end
end

puts 3.factorial
puts 30.factorial

### Add roman_numeral to integer class
### integer to roman numeral method
class Integer
  def roman_numeral
    number = self
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
end

puts 'Pick a number between 1 and 9999'
answer = gets.to_i
puts answer.roman_numeral

### add rom_num_to_int to the String class
class String
  def rom_num_to_int
    numeral = self
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
    
    if total.roman_numeral.downcase == numeral
      return total
    else
      'Please pick a valid roman-numeral'
    end
  end
end

puts 'Pick a roman numeral between 1 and 3000'
answer = gets.chomp
puts answer.rom_num_to_int
