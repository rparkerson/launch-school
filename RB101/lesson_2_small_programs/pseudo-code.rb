=begin
example problem: 
a method that determines which number is greatest in a collection.
iterate over the collection checking each value
set the first iteration value to a variable
iterate to the next value in the collect and check if it is greater than variable
if it is greater set that new value to variable
Continue checking all values in the collection this way
return the variable at the end
formal pseudo code:
START
Given a collection
SET iterator = 1
SET greatest_element = first collection element
WHILE iterator < collection size
  IF current collectoin element > greatest_element
    SET greatest_element = current element

  iterator = iterator + 1

PRINT greatest_element

END

1. a method that returns the sum of two integers

casual pseudo-code:
get the two intgers
add the two integers together
return the sum

formal pseudo-code: (integers retrieved from user)
START
GET the two integers
SET the integers to number1 and number2 variables
  add number1 and number 2 together
PRINT the added value
END

2. a method that takes an array of strings, and returns a string that
is all those strings concatenated together

given an array of strings
concatenate all the elements in the array together
return the value as a string

formal:
START
given an array of strings

SET a variable to the first element
  iterate through each element reassign the variable to the value of
  variable = variable concatenated with currect element
PRINT variable
END

3. a method that takes an array of integers, and returns a new array with
every other element.

given an array of integers
intitialize a new array
iterate over the array one by one
if the element is even save that element into a new array
return the new array

formal pseudo-code:
START
given an array of integers
SET a new array as an empty array
SET iterator = 0
  WHILE iterator < array size
    iterate over the new array
    IF current element is array element is even
      add current element to new array
    
    iterator = iterator + 1

  PRINT new array
END
=end
