# The following code throws an error. Find out what is wrong and think 
# about how you would fix it.

colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i == things.length || i == colors.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

# The things array has one less item in it so it returns nil when the
# element reference uses an index higher than the number of items.
# nil raises a type error when it is attempted to be converted to a 
# string with the + method. We can break with the things.length instead,
# and set it break if i == since length gives the total elements and the
# index reference is zero based so it will be 1 less
