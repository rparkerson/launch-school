x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

p my_hash
p my_hash2

# What's the difference between the two hashes that were created? 

# my_hash uses a symbol as a key which isn't as changeable and
# my_hash2 sets the value of x, "hi there", as the key to the value 
# of "some value"
