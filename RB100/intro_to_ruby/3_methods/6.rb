def calculate_product(num1, num2)
  num1 * num2
end
calculate_product(3)



=begin
ArgumentError: wrong number of arguments (1 for 2)
  from (irb):1:in `calculate_product'
  from (irb):4
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
  

  This error tells me that the calculate_product method on defined on 
  line 1 requires two arguments but was only given one when it was invoked
  on line 4.
=end