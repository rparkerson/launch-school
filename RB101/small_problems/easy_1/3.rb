#  input: positive integer
#  output: an array of the digits each as an element
#  positive
#  E : below
#  D : convert integer to array
#  A : 

def digit_list(number)
  number.to_s.chars.map { |e| e.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

def digit_list(number)
  arr = []
  loop do
    number, remainder = number.divmod(10)   
    arr.unshift(remainder)
    break if number == 0
  end
  arr
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

def digit_list(number)
  number.digits.reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

#  Student answer:
def digit_list(number)
  answer = []
  while number != 0
    answer.unshift(number % 10)
    number /= 10
  end
  answer
end
