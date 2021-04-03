=begin
Grade book
Write a method that determines the mean (average) of the three scores
passed to it, and returns the letter value associated with that grade.

Numerical Score Letter 	Grade
90 <= score <= 100 	'A'
80 <= score < 90 	'B'
70 <= score < 80 	'C'
60 <= score < 70 	'D'
0 <= score < 60 	'F'

Tested values are all between 0 and 100. There is no need to check for
negative values or values greater than 100.

Example:

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

P
input: integers (3 arguments as integers)
output: string (letter grade based on ranges)
rules
explicit:
find the mean (average of 3 integers)
retun a letter grade
letter grade is referenced from the range of scores
tested values are all between 0 and 100
(no need to test for negative or values greater than 100)
question:
how is rounding handled? - all inputs and chart appear to be integers -
  round to integer if float or use division to get back whole integer

E
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

D
strings

A
- Find the mean of the 3 numbers as arguments
- match the mean with the chart
- return the corresponding string letter

- find the mean assign value to variable `mean`
  - add the 3 integers together and divide by 3.0
  - round to the nearest whole number
- if score between 90 - 100 inclusively return 'A' *case statement
- if score between 80 - 89 return 'B'
- if score between 70 - 79 return 'C'
- if score between 60 - 69 return 'D'
- if score between  0 - 59 return 'F'

=end

def get_grade(num1, num2, num3)
  mean = ((num1 + num2 + num3) / 3.0).round

  case mean
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  when  0..59  then 'F'
  end
end

p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"


# Further Exploration (grade everage exceeds 100 due to extra credit)
def get_grade(num1, num2, num3)
  mean = ((num1 + num2 + num3) / 3.0).round

  case mean
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  when  0..59  then 'F'
  else              'A'
  end
end

p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"
p get_grade(99, 110, 101) #== "A"
p get_grade(60, 59, 59) #== "F"
