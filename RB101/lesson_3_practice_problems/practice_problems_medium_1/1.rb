=begin
Question 1

Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in
the days before computers had video screens).

For this practice problem, write a one-line program that creates the
following output 10 times, with the subsequent line indented 1 space to
the right:

The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock!

P
Input: 
Output: string indented 1 space
rules:
must be 1 line
mental model:
output a string 10 times and indent it 1 more space to the right each
iteration
E
The Flintstones Rock!
 The Flintstones Rock!
  The Flintstones Rock!
D
string
A
print the string to the screen
concatinate 1 space * iteration number(starting at 0)
output string again and continute iteration
=end

10.times {|number| puts "#{' ' * number}The Flintstones Rock!" }
