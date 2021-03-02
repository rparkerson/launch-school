# Programmatically determine if 42 lies between 10 and 100.
# hint: Use Ruby's range object in your solution.

p (10..100).include?(42)
# works if the argument is an integer in the range.

p (10..100).cover?(42)
# cover works on any value between the range.
