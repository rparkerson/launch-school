=begin
In the array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

Find the index of the first name that starts with "Be"

P
input: array
output: integer(specified index)
rules
explicit:
find the first name that starts with "Be"
return the index of that name
implicit:
expression should return index
E
=> 3

D
array

A
given `flintstones` array
loop through `flintstones`
  find the element `name` that starts with 'Be'
  return the index of that element `name`
=end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
name = flintstones.select { |name| name.start_with?('Be') }
p flintstones.index(name[0])

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
index = nil
flintstones.any? do |name|
  index = flintstones.index(name) if name.start_with?('Be')
end
p index

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.index { |name| name.start_with?('Be') }

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
p flintstones.index { |name| name[0, 2] == 'Be' }
