# The Ruby Array class has several methods for removing items from the array.
# Two of them have very similar names. Let's see how they differ:

# What do the following method calls do (assume we reset numbers to the 
# original array between method calls)?

numbers = [1, 2, 3, 4, 5]
p numbers.delete_at(1)
p numbers
# => 2
# numbers == [1, 3, 4, 5]
# This deletes the element at index 1 and mutates the object.  It returns
# the element at index 1: 2

numbers = [1, 2, 3, 4, 5]
p numbers.delete(1)
p numbers
# => 1
# numbers == [2, 3, 4, 5]
# This deletes all elements with the value of the integer 1 and returns
# the delete method argument 1. This mutates the object numbers references
