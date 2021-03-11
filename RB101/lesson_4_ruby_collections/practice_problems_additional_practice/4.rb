=begin
Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10,
         "Marilyn" => 22, "Spot" => 237 }

P
input: given hash
output: integer(lowest hash value)
rules
explicit:
pick out the lowest age
implicit:
return just the age not the key value pair

E
=> 10

D
hash

A
given the hash `ages`
convert `ages` to an array of the values
select the lowest value
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10,
         "Marilyn" => 22, "Spot" => 237 }
p min_age = ages.values.min

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10,
         "Marilyn" => 22, "Spot" => 237 }
min_age = ages.first[1]
ages.each { |_, age| min_age = age if age < min_age }
p min_age

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10,
         "Marilyn" => 22, "Spot" => 237 }
        
ages_array = ages.map { |_, age| age }
p ages_array.sort.first
