# Using the following code, print true if colors includes the 
# color 'yellow' and print false if it doesn't. 
# Then, print true if colors includes the color 'purple' and 
# print false if it doesn't.

# colors = 'blue pink yellow orange'

# Expected output:

# true
# false

colors = 'blue pink yellow orange'

arr = colors.split
p arr.include?('yellow')
p arr.include?('purple')

colors = 'blue pink yellow orange'
p colors.include?('yellow')
p colors.include?('purple')

colors = 'blue pink yellow orange'
p (colors =~ /yellow/) != nil
p (colors =~ /purple/) != nil

# student regex example
colors = 'blue pink yellow orange'

puts !!(colors =~ /yellow/)
puts !!(colors =~ /purple/)

# another student example regex
colors = 'blue pink yellow orange'
puts !!(colors[/\byellow\b/])
puts !!(colors =~ /\bpurple\b/)

colors = 'blue boredom yellow'
puts colors.include?('red')