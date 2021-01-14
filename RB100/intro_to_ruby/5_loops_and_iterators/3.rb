# Write a method that counts down to zero using recursion

# Input integer output countdown to zero
# print input number to zero, cant be negative
# use recursion so loop through recursion
# mental model use if else statement if else if checks for integer being 
# less than zero if so then stops
# if not it modifies argument by reassigning to one less by recursion
# then outputing the result 

def countdown(i)
  if i <= 0
    puts i
  else
    puts i
    countdown(i - 1)
  end
end

countdown(5)
countdown(0)
countdown(-4)