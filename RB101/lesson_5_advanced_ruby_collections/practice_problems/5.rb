=begin
Practice Problem 5
Given this nested Hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

figure out the total age of just the male members of the family.

P
input: hash
output: integer(sum of ages of males)
rules
explicit:
sum the age of just males

E
=> 444

D
hash

A
- isolate the values hashes where "gender" is "male"
- add the "age" values of those hahes together

create an array of ages
  select hash values where key "gender" value is "male"
    add the ages of those "age" values
find the sum of the ages array
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

p(munsters.map do |name, hash|
  hash.map do |key, value|
    if hash[key] == "male"
      hash["age"]
    else
      0
    end
  end
end.flatten.sum)

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
sum_male_age = 0
munsters.values.map do |hash|
  sum_male_age += hash["age"] if hash["gender"] == "male"
end
p sum_male_age

#  Given solution
total_male_age = 0
munsters.each_value do |details|
  total_male_age += details["age"] if details["gender"] == "male"
end

p total_male_age # => 444
