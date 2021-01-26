# In the code below, a nested array containing three groups of names 
# and numbers is assigned to favorites.

# favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]

# Flatten and print this array. That is, the printed result should 
# not have any subarrays, but should have all of the original strings 
# and numbers from the original array:

# Expected output:

# ["Dave", 7, "Miranda", 3, "Jason", 11]

favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
p favorites.flatten

favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
flat_favorites = favorites.flatten
p flat_favorites

favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
favorites.flatten!
p favorites
