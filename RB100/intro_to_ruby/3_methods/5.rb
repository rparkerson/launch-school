def scream(words)
  words = words + "!!!!"
  puts words
end

scream("Yippeee")  # => returns nil since the puts method has a return value
# of nil and Ruby implicitly retuns what the evaluated result of the last
# line executed in the method