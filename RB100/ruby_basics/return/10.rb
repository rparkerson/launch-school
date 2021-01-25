# What will the following code print? Why? 
# Don't run it until you've attempted to answer.

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

# the tricky_number method is invoked which has an if else statement.
# the if condition is true so the variable assignment number = 1 is 
# executed which returns 1. 1 would be the return value so the output
# of tricky_number puts call is 1.