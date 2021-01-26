# Using the following code, compare the value of name with the string 
# 'RoGeR' while ignoring the case of both strings. Print true if the 
# values are the same; print false if they aren't. Then, perform the 
# same case-insensitive comparison, except compare the value of name 
# with the string 'DAVE' instead of 'RoGeR'.

# name = 'Roger'

# Expected output:

# true
# false

name = 'Roger'
p name.downcase == 'RoGeR'.downcase
p name.downcase == 'DAVE'.downcase

name = 'Roger'
puts (name =~ /RoGeR/i) == 0   # => 0
puts (name =~ /DAVE/i) == 0    # => nil

name = 'Roger'
p name.casecmp? 'RoGeR'
p name.casecmp? 'DAVE'

name = 'Roger'
p name.casecmp('RoGeR') == 0
p name.casecmp('DAVE') == 0