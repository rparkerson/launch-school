=begin
Practice Problem 6
One of the most frequently used real-world string properties is that of
"string substitution", where we take a hard-coded string and modify it
with various parameters from our program.

Given this previously seen family hash, print out the name, age and gender
of each family member:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

...like this:

(Name) is a (age)-year-old (male or female).

P
input: hash
ouput: print string (given string with name, age, gender from hash)
rules:
explicit:
print out a string
string should be formated as the example and use hash data
implicit:
print every key value pair in hash

E
(Name) is a (age)-year-old (male or female).

D
hash

A
- access name, age and gender from hash key value pair
- output the information as a string

iterate through every hash key value pair
  reference name, age, and gender on each iteration
  print output (use string interpolation)
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
munsters.each do |name, details|
  p "#{name} is a #{details['age']}-year-old #{details['gender']}."
end
