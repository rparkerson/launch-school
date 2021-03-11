=begin
Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10,
         "Marilyn" => 22, "Spot" => 237 }

P
input: hash
output: integer (sum of ages(hash values))
rules:
explicit:
add up all the ages given ages hash
ages are the values in hash

E
integer

D
hash

A
given a hash `ages`
convert all values into an array
sum all values from array
set returned integer value to the variable `total_ages`
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10,
         "Marilyn" => 22, "Spot" => 237 }

p total_ages = ages.values.sum

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10,
         "Marilyn" => 22, "Spot" => 237 }

total_ages = ages.each_with_object([]) do |(key, value), total|
               total << value
             end 
p total_ages.reduce(:+)

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10,
         "Marilyn" => 22, "Spot" => 237 }

total_ages = ages.reduce(0) { |sum, pair| sum + pair[1] }
p total_ages

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10,
         "Marilyn" => 22, "Spot" => 237 }
total_ages = 0

ages.each { |_, age| total_ages += age }
p total_ages

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10,
         "Marilyn" => 22, "Spot" => 237 }
total_ages = 0
counter = 0

loop do
  break if counter == ages.size
  ages_array = ages.values

  total_ages += ages_array[counter]

  counter += 1
end

p total_ages
