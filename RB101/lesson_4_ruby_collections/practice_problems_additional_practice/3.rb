=begin
In the age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

remove people with age 100 and greater.

P
input: hash
output: hash
rules
explicit:
remove pairs with value of 100 +
questions:
do we need to return the original hash destructively modified? - not specified

E
{ "Herman" => 32, "Lily" => 30, "Eddie" => 10 }

D
hash

A
given hash `ages`
remove key/values with value >= 100
  create a loop
  check if value >= 100
    delete key from `ages` at value if true
return mutated hash `ages`
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.each do |name, age|
  if age >= 100
    ages.delete(name)
  end
end

p ages

#  Refactored
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.each { |name, age| ages.delete(name) if age >= 100 }
p ages

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.keep_if { |_, age| age < 100}
p ages

#  Non-mutating
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

youth_only = ages.select { |_, age| age < 100}
p youth_only
p ages # Not mutated
