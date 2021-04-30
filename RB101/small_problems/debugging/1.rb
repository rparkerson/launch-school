=begin
Countdown
Our countdown to launch isn't behaving as expected. Why? Change the code
so that our program successfully counts down from 10 to 1.
The integer object that the variable counter references is passed into the
decrease method as an argument. The local variable counter within the method
definition is a separate variable from the counter variable initialized on
line 5.

On `line 2` this method local variable, counter, is then reassigned to a 
new object and and the return value of the method is not used to update the
variable counter outside the method. We can reassign the return value of the 
method to the variable counter outside of the method to capture this updated
value.
=end
def decrease(counter)
  counter - 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

# solution
puts 'LAUNCH!'
def decrease(counter)
  counter - 1  # Reassignment is not needed can be: counter - 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'

# Further Exploration : refactor to reference 10 only once
def decrease(counter)
  counter - 1
end

counter = 10

while counter >= 1
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'
