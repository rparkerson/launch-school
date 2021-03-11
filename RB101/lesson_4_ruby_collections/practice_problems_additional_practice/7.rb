=begin
Create a hash that expresses the frequency with which each letter occurs
in this string:

statement = "The Flintstones Rock"

ex:
{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

P
input: string
output: hash
rules
explicit:
create a hash with keys as letters and values as corresponding frequence
of letter
implicit:
keys are case sensitive
match the example hash
questions:
are whitespaces ignored? yes - only 'letters'
how are symbols handled? n/a

E
{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

D
array
hash

A
given `statement` string
initialize `letter_count` as empty hash
convert `statement` to an array `letters`
sort `letters`
delete whitespace ' '
loop through `letters`
  check if `letter` is a key in `letter_count`
    if true increment `letter_count` value + 1
    else add `letter` as a key in `letter_count` with value set to 1
return `letter_count`
=end

statement = "The Flintstones Rock"
letter_count = {}
letters = statement.chars.sort
letters.delete(' ')

letters.each do |letter|
  if letter_count.include?(letter)
    letter_count[letter] += 1
  else
    letter_count[letter] = 1
  end
end

p letter_count

=begin
A
given `statement` string
initialize `letters` array which contains A-Z and a-z
initialize `letter_count` as empty hash
loop through `letters` with each element `letter`
  variable `frequency` = times `letter` is in `statement`
  if `frequency` > 0
    add `letter` as a key with value `frequency` to `letter_count` hash
return `letter_count`
=end

statement = "The Flintstones Rock"
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letter_count = {}

letters.each do |letter|
  frequency = statement.count(letter)
  letter_count[letter] = frequency if frequency > 0
end

p letter_count
