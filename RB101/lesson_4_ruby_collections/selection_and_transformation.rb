=begin
P
input: hash
output: return hash(new_object)
rules:
explicit:
return a hash with the key_value pair value is fruit
implicit:
create a new object

E
select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}

D
hash

A
create a select_fruit method given a 'hash' parameter
initialize an empty hash 'selected_fruits'
initialize an array 'hash_keys' set to the hash keys
loop through 'hash_keys' with each element in block 'key'
  check if 'hash' 'key' key is equal to 'Fruit' string
    if true set 'key' to 'Fruit' in 'selected_fruits' hash
return 'selected_fruits' hash

(second algorithm)
create a select_fruit method given a 'produce_list' hash parameter
initialize an empty 'selected_fruits' hash
initialize `produce_keys` which references 'produce_list' keys
initialize `counter` and set to the value 0
create a loop
  initialize `current_key` = `produce_keys` index `counter`
  check if hash key `current_key` == 'Fruit'
    `selected_fruits` `current_key` key = 'Fruit' value
  `counter` increment by 1
  break from loop if `counter` == `produce_list` size
return `selected_fruits` hash
=end

def select_fruit(hash)
  hash_keys = hash.keys
  selected_fruits = {}

  hash_keys.each do |key|
    if hash[key] == 'Fruit'
      selected_fruits[key] = 'Fruit'
    end
  end

  selected_fruits
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce)

#  Second solution
def select_fruit(produce_list)
  produce_keys = produce_list.keys
  counter = 0
  selected_fruits = {}

  loop do
    break if counter == produce_list.size

    current_key = produce_keys[counter]
    
    if produce_list[current_key] == 'Fruit'
      selected_fruits[current_key] = 'Fruit'
    end

    counter += 1
  end

  selected_fruits
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

p select_fruit(produce)

=begin
Can you implement a double_numbers! method that mutates its argument?

P
input: array
output: same array modified
rules
explicit:
mutate the original array and return it
double each element value
implicit:
each element is an integer

E
my_numbers = [1, 4, 3, 7, 2, 6]
double_numbers(my_numbers) # => [2, 8, 6, 14, 4, 12]
my_numbers # => [2, 8, 6, 14, 4, 12]

D
array

A
define `double_numbers!` method that takes an `numbers` as a parameter
initialize `counter` = 0
create a loop
  for each element in `numbers` starting with index `counter`
  `numbers` at `counter` = `numbers` `counter` * 2
  increment counter by 1
  break from loop if counter == `numbers` size 
return `numbers`
=end

def double_numbers!(numbers)
  counter = 0
  
  loop do
    break if counter == numbers.size

    numbers[counter] *= 2
    
    counter += 1
  end

  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers!(my_numbers) # => [2, 8, 6, 14, 4, 12]
p my_numbers # => [2, 8, 6, 14, 4, 12]

#  modified to select numbers with odd indices values
def double_odd_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?
    doubled_numbers << current_number

    counter += 1
  end

  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd_numbers(my_numbers)  # => [2, 4, 6, 14, 2, 6]

# not mutated
p my_numbers                      # => [1, 4, 3, 7, 2, 6]

=begin
Try coding a method that allows you to multiply every array item
by a specified value

my_numbers = [1, 4, 3, 7, 2, 6]
multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]

P 
input: array
output: array(elements multiplied by specified value)
rules
explicit:
create a method that takes 2 arguments (array, number)
return an array with elements multiplied by number
questions:
do we need to return a new array? -not specified

E
my_numbers = [1, 4, 3, 7, 2, 6]
multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]

D
array

A
define a method multiply that takes 2 arguments 'numbers' and `multiplier`
initialize empty array 'multipied_numbers'
initialize `counter` = 0
create a loop
  initialize `current_number` = `numbers` index `counter`
  `multiplied_numbers` append `current_number` times `multiplier`
  break from loop if `counter` == `numbers` size
return `multiplied_numbers` array
=end

def multiply(numbers, multiplier)
  multiplied_numbers = []
  counter = 0
  
  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    multiplied_numbers << current_number * multiplier

    counter += 1
  end
  
  multiplied_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
p my_numbers
