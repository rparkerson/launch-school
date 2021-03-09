=begin
Given the array below, use loop to remove and print each name.
Stop the loop once names doesn't contain any more elements.

names = ['Sally', 'Joe', 'Lisa', 'Henry']

Keep in mind to only use loop, not while, until, etc.

P
input: given array
output: print strings(from given array)
rules
explicit:
remove and print each name in 'names' array
use a loop and break once 'names' array is empty
use loop keyword to loop
implicit:
modify 'names' array

E
Sally
Joe
Lisa
Henry

D
array

A
given an array of names 'names'
create a loop
  remove first name element from 'names' array
  print the removed name 
  break once 'names' is empty
=end

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

loop do
  puts names
  break names.clear
end

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop { break names.clear unless puts names }
