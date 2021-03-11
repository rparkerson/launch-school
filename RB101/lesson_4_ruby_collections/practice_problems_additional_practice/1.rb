=begin
Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

Turn this array into a hash where the names are the keys and the values
are the positions in the array.

P
input:array
output: hash
rules
explicit:
given an array change this to a hash
keys are the names
values are the array position
E
{"Fred"=>0, "Barney"=>1, "Wilma"=>2, "Betty"=>3, "Pebbles"=>4, "BamBam"=>5}
D
hash
A
given array `flintstones`
initialize `index` to 0
loop through `flintstones`
  for each element `name` set `hash` key as `name` to `index`
  increment `index` by 1
save return value of loop as `flintstones_hash`
=end

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

p flintstones_hash = flintstones.zip(0..5).to_h

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
counter = 0

flintstones_hash = flintstones.each_with_object({}) do |name, hash| 
         hash[name] = counter
         counter += 1
       end
p flintstones_hash

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
counter = 0
flintstones_hash = {}

loop do
  break if counter == flintstones.size

  current_name = flintstones[counter]

  flintstones_hash[current_name] = counter

  counter += 1
end
p flintstones_hash

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}

flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end
p flintstones_hash
