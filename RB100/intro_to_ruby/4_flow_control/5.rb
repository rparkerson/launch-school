def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end
equal_to_four(5)

# When the method on line 8 is invoked there is an error due to there being
# no end keyword at the end of the method definition.  end can be added
# to line 7 after the if else statement to fix this.