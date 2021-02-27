=begin
P
input: total amount and tip rate
output: tip amount and total amount
Requirements:
Format the amount with $
Questions:
Do we need to validate input? no
positive numbers only? yes
Does the line spacing need to match the example?
mental model:
Prompt for a number(bill) and percent and compute the tip (percentage), and
output the tip and original bill.
E
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0
D
strings and floats
A
Prompt for a bill amount
  Save the amount as a variable and convert to float
prompt for a tip percentage
  save tip to a variable convert to a float
  determine tip as a percentage (/ 100)
Calculate the tip bill * tip %
output the tip
calculate the total amount
output the total amount and format floats
=end

#  Further exploration(dollar formating)
print "What is the bill? "
bill = gets.to_f

print "What is the tip percentage? "
tip_percent = (gets.to_f) / 100

tip = format('%.2f', (bill * tip_percent))
total = format('%.2f', (bill + tip.to_f))

puts "The tip is $#{tip}"
puts "The total is $#{total}"
