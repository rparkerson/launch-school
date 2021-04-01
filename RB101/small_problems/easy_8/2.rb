=begin
Madlibs
Mad libs are a simple game where you create a story template with blanks
for words. You, or another player, then construct a list of words and place
them into the story, creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb,
and an adjective and injects those into a story that you create.

Example

Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

P
input: 4 strings
output: string (using the 4 collected string)
rules
explicit:
prompt for 4 strings (noun, verb, adverb, adjective)
put those 4 into a story you create.
implicit:
try to match formating in example
questions:
use each of the collected strings only once?

E
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

D
strings

A
- prompt user for each part of speech
- save as variables
- use those variables in a story

* string interpolation
=end

print "Enter a noun: "
noun = gets.chomp

print "Enter a verb: "
verb = gets.chomp

print "Enter an adjective: "
adjective = gets.chomp

print "Enter an adverb: "
adverb = gets.chomp

puts
puts "You once went on a #{adjective} adventure #{adverb}."
puts "Unfortunatly, it ended abrubtly when a #{noun} decided to #{verb} you."
puts

#  Provided solution example:
sentence_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? That's hilarious!"
sentence_2 = "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
sentence_3 = "The #{noun} #{adverb} #{verb}s up #{adjective} Joe's turtle."

puts [sentence_1, sentence_2, sentence_3]
