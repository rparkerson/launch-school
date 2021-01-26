# Using the following code, combine the two names together to form a 
# full name and assign that value to a variable named full_name. 
# Then, print the value of full_name.

# first_name = 'John'
# last_name = 'Doe'

# Expected output:

# John Doe

first_name = 'John'
last_name = 'Doe'
full_name = "#{first_name} #{last_name}"
puts full_name

first_name = 'John'
last_name = 'Doe'
full_name = first_name + ' ' + last_name
puts full_name

first_name = 'John'
last_name = 'Doe'
full_name = first_name.concat(' ', last_name)  # mutates the caller
puts full_name
p first_name
p last_name

first_name = 'John'
last_name = 'Doe'
full_name = last_name.prepend(first_name, ' ') # mutates the caller
puts full_name
p first_name
p last_name

first_name = 'John'
last_name = 'Doe'
full_name = [first_name, last_name].join(" ")  # array method
puts full_name
p first_name
p last_name

first_name = 'John'
last_name = ' Doe'
full_name = first_name.insert(-1, last_name)
puts full_name
p first_name
p last_name

first_name = 'John'
last_name = 'Doe'
full_name = format('%s %s', first_name, last_name)
puts full_name

first_name = 'John'
last_name = 'Doe'
full_name = first_name.sub(/\z/, " #{last_name}")
puts full_name