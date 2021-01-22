# Given the array below, use loop to remove and print each name. 
# Stop the loop once names doesn't contain any more elements.

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.empty?
end


names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names
  names.clear 
  break
end


# Single line
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop { puts names; names.clear; break }


# last to first order
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.pop
  break if names.size == 0
end
