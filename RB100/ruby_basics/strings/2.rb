# Modify the following code so that double-quotes are used instead 
# of single-quotes.

puts 'It\'s now 12 o\'clock.'

# Expected output:

# It's now 12 o'clock.

puts "It's now 12 o'clock."

# ' single quotes only escape \' symbol with \ backslash'

puts %q(It's now 12 o'clock.)

puts %Q(It's now 12 o'clock.)

puts "'Are you sure?' said \"Frank\"."

puts '\'Are you sure?\' said "Frank".'