# Using the following code, write a method called car that takes two 
# arguments and prints a string containing the values of both arguments.

# car('Toyota', 'Corolla')

# Expected output:
# Toyota Corolla

def car(make='make', model='model')
  puts "#{make} #{model}"  # returns nil
end

car('Toyota', 'Corolla')
car

def car(make, model)
  "#{make} #{model}"      # returns a string
end

puts car('Toyota', 'Corolla')