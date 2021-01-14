def scream(words)
  words = words + "!!!!"  # variable reassignment
  return
  puts words
end

scream("Yippeee")  # => prints nothing.  returns from method execution on
# line 3 before the output on line 4 is executed.  The return value is nil
# since nothing was on line 3.