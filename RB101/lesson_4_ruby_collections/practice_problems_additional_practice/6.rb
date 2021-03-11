=begin
Amend this array so that the names are all shortened to just the first
three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

P
input: array
output: array(3 character elements)
rules
explicit:
amend this array (return same array)
shorten each element to the first 3 characters
questions:
What if element size is less than 3 characters? n/a

E
=> %w(Fre Bar Wil Bet Bam Peb)

D
array

A
given the array `flintstones`
loop through the array
  modify destructively each element `name` to first 3 characters only
    **use index reassignment  **(implementation detail)
      **set `name` to the first 3 indexed characters
return the modified array
=end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.each_with_index { |name, index| flintstones[index] = name[0, 3] }
p flintstones

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.each do |name|
  index = flintstones.index(name)
  flintstones[index] = name[0, 3]
end
p flintstones

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! { |name| name[0, 3] }
p flintstones
