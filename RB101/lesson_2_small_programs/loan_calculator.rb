=begin
P
Input: amount(float), the annual Percentage Rate (APR)(float), duration (months)
Output: monthly interest rate, loan duration(months), monthly payment
Mental model:
Collect 3 pieces of information from the user through a prompt
  (loan, APR, duration(months))
save the values as floats
use the values in the formula to calculate the following
  - monthly interest, duration(months), payments(monthly)
print the 3 return values

questions:
how will this input be collected? user input (gets)
How is the information given?(data structure)(string?)
Do we need to format into dollars ($3.00)?
Do we need to validate input?
monthly APR = APR / 12

E
100000 loan 6% apr 60months => .5 interest rate, 60 months, 1933.28 payment

D
input string
data floats

A
Prompt for loan amount
  save as a variable (convert to float)
prompt for APR
  save as a variable (convert to float)
prompt for duration (in months)
  save as a variable (convert to float)

calculate monthly interest
  save value
calculate monthly payments
  save value

return monthly interest,
return duration
return monthly payment
=end

def payment_calculator(loan, interest, duration)
  loan * (interest / (1 - (1 + interest)**(-duration)))
end

puts("Welcome to the loan calculator!")

puts("What is the loan amount?")
loan_amount = gets.to_f

puts "What is the Anual Percentage Rate(APR)?"
apr = gets.to_f / 100

puts "What is the duration of the loan in months?"
duration_months = gets.to_f

monthly_interest = apr / 12
payment = payment_calculator(loan_amount, monthly_interest, duration_months)

p "Your loan amount is: #{loan_amount}"
p "Your apr is: #{apr}"
p "Your loan duration in months is: #{duration_months}"
p "--------------------"
p "Your monthly interest is: #{monthly_interest}"
p "Your loan duration in months is: #{duration_months}"
p "Your monthly payment is: #{payment}"
