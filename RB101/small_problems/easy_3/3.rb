=begin
P
input: string
output: string
rules:
spaces do not count as characters
punctuation like , counts as characters
return the original string to user
format the same as examples
mental model:
prompt user for a word or multiple words and print the number of characters
minus any spaces.
E
input:
Please write word or multiple words: walk
output:
There are 4 characters in "walk".

input:
Please write word or multiple words: walk, don't run
output:
There are 13 characters in "walk, don't run".
D
strings
A
Prompt the user for input
save the input as a variable input
variable character_count = the number of characters in a string with " " spaces deleted
print the number of characters and original string
=end

print "Please write word or multiple words: "
input = gets.chomp
character_count = input.delete(" ").size
puts "There are #{character_count} characters in \"#{input}\"."

#  Alternative
print "Please write word or multiple words: "
input = gets.chomp

character_count = input.size - input.count(' ')

puts "There are #{character_count} characters in \"#{input}\"."
