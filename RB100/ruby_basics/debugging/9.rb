# Given a String of digits, our digit_product method should return the 
# product of all digits in the String argument. You've been asked to 
# implement this method without using reduce or inject.

# When testing the method, you are surprised by a return value of 0. 
# What's wrong with this code and how can you fix it?

def digit_product(str_num)
  p digits = str_num.chars.map { |n| n.to_i }
  product = digits[0]

  digits.each do |digit|
   p product *= digit
  end
  
  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0

# At first this was set to return the product of 0 times each number
# in the string which was just zero. we can set the initialization value
# of product to the first integer in digits with element reference.
