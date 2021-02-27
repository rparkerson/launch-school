=begin
P
input: string
output: string
rules:
remove the !
questions:
mental model:
Gets a users name and greet them one of two ways.  Normally or use all caps
if they add an ! to their name.
E
What is your name? Bob
Hello Bob.
What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?
D
strings
A
Prompt user for their name
save it as a variable
check if name ends with !
if ! output an all caps greeting and remove ! from name.
else if no ! output greeting to user
=end

print "What is your name? "
name = gets.chomp

if name.end_with?('!')
  puts "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING!?"
else
  puts "Hello #{name}."
end

#  Further Exploration
print 'What is your name? '
name = gets.chomp!

if name[-1] == '!'
  name = name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
