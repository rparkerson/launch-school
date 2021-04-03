=begin
Grocery List
Write a method which takes a grocery list (array) of fruits with quantities
and conquantityerts it into an array of the correct number of each fruit.

Example:

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

P
input: array (array of sub-arrays with fruit, and quantity)
output: array (with quantity of each fruit in the array)
rules
explicit:
return an array with the fruit string times its quantity

E
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

D
array
hash?

A

- reference each fruit and it's quantity
- put the fruit times its quantity into a new array
- return new array

- Iterate through each array element and store changes into new array
  - times fruit in an array (first element) by quantity (second element)
- return new array and flatten to make single dimensional

hash

=end

def buy_fruit(list)
  list.map { |sub_list| [sub_list[0]] * sub_list[1] }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) # ==
# ["apples", "apples", "apples", "orange", "bananas","bananas"]

# Refactored
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) # ==
# ["apples", "apples", "apples", "orange", "bananas","bananas"]

def buy_fruit(list)
  list.to_h.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) # ==
  # ["apples", "apples", "apples", "orange", "bananas","bananas"]

def buy_fruit(list)
  list.each_with_object([]) do |(fruit, quantity), new_arr|
    quantity.times { new_arr << fruit }
  end
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) # ==
  # ["apples", "apples", "apples", "orange", "bananas","bananas"]  

def buy_fruit(list)
  list.each_with_object([]) do |(fruit, quantity), explanded list|
   explanded list.concat(Array.new(quantity, fruit))
  end
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) # ==
  # ["apples", "apples", "apples", "orange", "bananas","bananas"]  
