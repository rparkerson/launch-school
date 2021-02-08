a = 7

def my_value(b)
  a = b
end

my_value(a + 5)
puts a

a = "Xyzzy"

def my_value(b)
  b[2] = '-'
end

my_value(a)
puts a

a = "Xyzzy"

def my_value(b)
  b = 'yzzyX'
end

my_value(a)
puts a

a = 7

def my_value(b)
  b = a + a
end

my_value(a)
puts a

a = 7
array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

array = [1, 2, 3]

array.each do |element|
  a = element
end

puts a

a = 7
array = [1, 2, 3]

array.each do |a|
  a += 1
end

puts a

a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a

 #  Loops 1

loop do
  puts 'Just keep printing...'
  break
end

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop'
    break
  end

  break
end

puts 'This is outside all loops.'

iterations = 0
loop do
  iterations += 1
  puts "Number of iterations = #{iterations}"
  
  break if iterations > 4
end

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  if answer == 'yes'
    break
  end
end

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer == 'yes'
end

say_hello = true
counter = 0
while say_hello
  puts 'Hello!'
  counter += 1
  if counter == 5
    say_hello = false
  end
end

numbers = []

while numbers.size < 5
  numbers.push(rand(100))
  puts numbers if numbers.size == 5
end

count = 1

until count == 11
  puts count
  count += 1
end

numbers = [7, 9, 13, 25, 18]

until numbers.size == 0
  puts numbers.shift
end

for i in 1..100
  puts i if i.odd?
end

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends do puts "Hello, #{friend}!" end

count = 1

loop do
  puts "#{count} is #{count.odd? ? 'odd' : 'even'}!"
  break if count == 5
  count += 1
end

loop do
  number = rand(100)
  puts number
  break if number >= 0 && number <= 10
end

loop do
  puts number = rand(100)
  break if number < 11
end

loop do
  process_the_loop = [true, false].sample
  if process_the_loop
    puts "The loop was processed!"
    break
  else
    puts "The loop wasn't processed!"
  end
end

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.to_i
  if answer == 4
    puts "That's correct!"
    break 
  end
  puts "Wrong answer.  Try again!s"  
end

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers.push input
  break if numbers.size == 5
end
puts numbers

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop
  break if names.empty?
end

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names[0]
  names.delete_at(0)
  break if names.size == 0
end

5.times do |index|
  puts index
  break if index == 2
end

5.times do |index|
  puts index
  break if index == 4
end

5.times do |index|
  puts index
  break if index < 7
end

number = 0

until number == 10
  number += 1
  puts number if number.even?
end

number_a = 0
number_b = 0

loop do
  p number_a += rand(2)
  p number_b += rand(2)
  break if number_a == 5 || number_b == 5
end

def greeting
  puts 'Hello!'
end

number_of_greetings = 2

while number_of_greetings > 0
  greeting
  number_of_greetings -= 1
end

puts ">> Type anything you want:"
answer = gets
p answer

puts ">> What is your age in years?"
age_years = gets.to_i
puts "You are #{age_years * 12} months old."

puts ">> Do you want me to print something? (y/n)"
answer = gets
puts "something" if answer == "y\n"

loop do
  puts ">> Do you want me to print something? (y/n)"
  answer = gets.chomp.downcase
  break puts "something" if answer == "y"
  break if answer == "n"
  puts ">> Invalid input! Please enter y or n"
end

#  Launch School Printer 1
loop do
  puts ">> How many output lines do you want? Enter a number >= 3:"
  num = gets.to_i
  if num >= 3
    num.times { puts "Launch School is the best!" }
    break
  end
  puts ">> That's not enough lines."
end

PASSWORD = 'SecreT'

loop do
  puts ">> Please enter your password:"
  pass = gets.chomp
  if pass == PASSWORD
    puts 'Welcome!'
    break
  end
  puts '>> Invalid password:'
end

USER     = 'admin'
PASSWORD = 'SecreT'

loop do
  puts ">> Please enter user name:"
  user_check = gets.chomp
  puts ">> Please enter your password:"
  pass_check = gets.chomp
  break puts 'Welcome!' if pass_check == PASSWORD && user_check == USER
  puts '>> Authorization failed!'
end

def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

loop do
  puts '>> Please enter the numerator:'
  numerator = gets.chomp
  unless valid_number?(numerator)
    puts '>> Invalid input.  Only integers are allowed.'
    next
  end

  loop do
    puts '>> Please enter the denominator:'
    denominator = gets.chomp
    if denominator == '0'
      puts '>> Invalid input. A denominator of 0 is not allowed.'
    elsif !valid_number?(denominator)
      puts '>> Invalid input. Only integers are allowed.'
    else
      puts ">> #{numerator} / #{denominator} is #{numerator.to_i / denominator.to_i}"
      exit
    end
  end
end

#  Launch School Printer 2
loop do
  puts ">> How many output lines do you want? Enter a number >= 3: (q to quit)"
  num_string = gets.chomp.downcase
  num = num_string.to_i
  break if num_string == 'q'
  if num >= 3
    num.times { puts "Launch School is the best!" }
    next
  end
  puts ">> That's not enough lines."
end

loop do
  puts '>> How many output lines do you want? Enter a number >= 3: (Q to quit)'
  number_string = gets.chomp.downcase
  number_of_lines = number_string.to_i
  
  break if number_string == 'q'

  if number_of_lines >= 3
    while number_of_lines > 0
      puts 'Launch School is the best!'
      number_of_lines -= 1
    end
  else
    puts ">> That's not enough lines."
  end
end

 #  Goes beyond the scope of the problem and specifically checks for 
 #  if it is a zero seperately from not an integer.
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

num2 = nil
loop do
  puts '>> Please enter a positive or negative integer:'
  num1 = gets.chomp
  if num1 == '0'
    puts '>> Invalid input. Only non-zero integers are allowed.'
    next
  end

  loop do
    puts '>> Please enter a positive or negative integer:'
    num2 = gets.chomp
    if num2 == '0'
      puts '>> Invalid input. Only non-zero integers are allowed.'
      next
    end
    break
  end 

  if (num1.to_i * num2.to_i).negative?
    if valid_number?(num1) && valid_number?(num2)
      puts "#{num1} + #{num2} = #{num1.to_i + num2.to_i}"
      break
    end
  elsif (num1.to_i * num2.to_i) != 0 
    puts ">> Sorry. One integer must be positive, one must be negative."
    puts "Please start over."
  end
end

def print_me
  puts "I'm printing within the method!"
end

print_me

def print_me
  "I'm printing the return value!"
end

puts print_me

def hello
  'Hello'
end

def world
  "World"
end

puts hello + ' ' + world

def hello
  'Hello'
end

def world
  'World'
end

def greet
  puts "#{hello} #{world}"
end

greet

def car(make, model)
  "#{make} #{model}"
end

puts car('Toyota', 'Corolla')

daylight = [true, false].sample

def time_of_day(boolean)
  if boolean
    puts "It's daytime!"
  else 
    puts "It's nighttime!"
  end
end

time_of_day(daylight)

daylight = [true, false].sample

def time_of_day(boolean)
  boolean ? puts("It's daytime!") : puts("It's nighttime!")
end

time_of_day(daylight)

def dog(name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}."
puts "The cat's name is #{cat('Ginger')}."

def assign_name(name = 'Bob') 
  name
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'

def add(num1, num2)
  num1 + num2
end

def multiply(num1, num2)
  num1 * num2
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

def name(array)
  array[rand(array.size)]  #  Could also use .sample
end

def activity(array)
  array[rand(array.size)]
end

def sentence(noun, verb)
  "#{noun} went #{verb} today!"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']


puts sentence(name(names), activity(activities))

def meal
  return 'Breakfast'
end

puts meal

def meal
  'Evening'
end

puts meal

def meal
  return 'Breakfast'
  'Dinner'
end

puts meal

def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal
def meal
  'Dinner'
  puts 'Dinner'
end

p meal

def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal

def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

p count_sheep

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

sun = ['visible', 'hidden'].sample

if sun == 'visible'
  puts "The sun is so bright!"
end

sun = ['visible', 'hidden'].sample

unless sun == 'visible'
  puts "The clouds are blocking the sun!"
end

sun = ['visible', 'hidden'].sample

puts "The sun is so bright!" if sun == 'visible'
puts "The clouds are blocking the sun!" unless sun == 'visible'

boolean = [true, false].sample

boolean ? puts("I'm true!") : puts("I'm false!")

number = 7

if number
  puts "My favorite number is #{number}."
else
  puts "I don't have a favorite number."
end

stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'
  puts "Go!"
when 'yellow'
  puts "Slow down!"
else
  puts "Stop!"
end

p stoplight = ['green', 'yellow', 'red'].sample

if stoplight == 'green'
  puts 'Go!'
elsif stoplight == 'yellow'
  puts 'Slow down!'
else
  puts 'Stop!'
end

p status = ['awake', 'tired'].sample

result = if status == 'awake'
           "Be productive!"
         else
           "Go to sleep!"
         end

puts result

p number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

p stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end

str = String.new
p str

p empty_string = ''

p string = %q()

puts 'It\'s now 12 o\'clock.'

# double quotes
puts "It's now 12 o'clock."

name = 'Roger'
puts name.downcase == 'RoGeR'.downcase
puts name.downcase == 'DAVE'.downcase

puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE')  == 0

puts name.casecmp?('RoGeR')
puts name.casecmp?('DAVE')

name = 'Elizabeth'

# puts "Hello, #{name}!"

first_name = 'John'
last_name = 'Doe'

full_name = first_name.insert(-1, last_name)
puts full_name
puts full_name = "#{first_name} #{last_name}"
puts full_name 

state = 'tExAs'
puts state.capitalize!
puts state

greeting = 'Hello!'
greeting = 'Goodbye!'
puts greeting

greeting = 'Hello!'
greeting.gsub!('Hello', 'Goodbye')
puts greeting

alphabet = 'abcdefghijklmnopqrstuvwxyz'

puts alphabet.split('')

words = 'car human elephant airplane'
arr = words.split

arr.each {|word| puts word + 's' }

colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')

colors = 'blue boredom yellow'
puts colors.include?('red')

pets = ['cat', 'dog', 'fish', 'lizard']

my_pet = pets[2]
puts "I have a pet #{my_pet}!"

pets = ['cat', 'dog', 'fish', 'lizard']

my_pets = pets[2, 2]   # or could use pets[2..3]
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]

my_pets.pop
puts "I have a pet #{my_pets[0]}!"

pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop

my_pets.push(pets[1])
puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"

colors = ['red', 'yellow', 'purple', 'green']

colors.each { |color| puts "I'm the color #{color}!"}

numbers = [1, 2, 3, 4, 5]

doubled_numbers = numbers.map { |num| num * 2 }

p doubled_numbers

numbers = [5, 9, 21, 26, 39]

divisible_by_three = numbers.select { |num| num % 3 == 0 }
p divisible_by_three

arr = ['Dave', 7, 'Miranda', 3, 'Jason', 11]
[['Dave', 7], ['Miranda', 3], ['Jason', 11]]
arr2 = []
arr2.push(arr[0..1])
arr2.push(arr[2..3])
arr2.push(arr[4..5])
p arr2

arr = ['Dave', 7, 'Miranda', 3, 'Jason', 11]
arr2 = []
x = 0
3.times do |num| 
  arr2.push(arr[x..x+1])
  x += 2
end

p arr2

favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

p favorites.flatten

array1 = [1, 5, 9]
array2 = [1, 9, 5]

puts array1 == array2

car = {type: 'sedan', 
       color: 'blue', 
       mileage: 80_000}
p car

car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000
}

car[:year] = 2003

car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}

car.delete(:mileage)
p car

car = {
  type:    'sedan',
  color:   'blue',
  year:    2003
}

puts car[:color]

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each { |k, v| puts "A #{k} number is #{v}." }

numbers.each { |k| puts "A #{k[0]} number is #{k[1]}." }

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.map { |k, v| v / 2 }
p half_numbers

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select { |k, v| v < 25 }
p low_numbers

numbers = {
  high:   100,
  medium: 50,
  low:    10
}

low_numbers = numbers.select! do |key, value|
                 value < 25
               end

p low_numbers.object_id
p numbers.object_id

vehicles = {
  car: {type: 'sedan', color: 'blue', year: 2003},
  truck: {type: 'pickup', color: 'red', year: 1998}
}

p vehicles

car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}

car_array = car.to_a
p car.to_a
car = [[:type, 'sedan'], [:color, 'blue'], [:year, 2003]]

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

p find_first_nonzero_among([0, 0, 1, 0, 2, 0])
p find_first_nonzero_among([1])

def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

predict_weather

def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.to_i

puts "The result is #{multiply_by_five(number)}!"

pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] << 'bowser'

p pets #=> {:cat=>"fluffy", :dog=>"bowser", :fish=>"oscar"}

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n.even?
end

p even_numbers # expected output: [2, 6, 8]

def get_quote(person)
  if person == 'Yoda'
    return'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    return 'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'
puts 'Einstein says:'
puts '"' + get_quote('Einstein') + '"'
puts 'Yoda says:'
puts '"' + get_quote('Yoda') + '"'

# Account Balance
# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance += calculate_balance(month)
end

puts balance

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['a', 'b', 'c', 'pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i > things.length - 1 || i > colors.length - 1

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end

p digit_product('12345')
# expected return value: 120
# actual return value: 0

# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
p input = gets.chomp.downcase.to_sym

new_player = player.merge(character_classes[input])

puts 'Your character stats:'
puts player
puts new_player
