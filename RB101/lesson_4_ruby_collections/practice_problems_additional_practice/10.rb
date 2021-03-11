=begin
Given the munsters hash below

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

Modify the hash such that each member of the Munster family has an additional
"age_group" key that has one of three values describing the age group the
family member is in (kid, adult, or senior). Your solution should produce
the hash below

{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and
a senior is aged 65+.

P
input: given hash
output: hash (with one pair added to the value hash)
rules
explicit:
modify the hash(mutate)
add an `age_group` key to each value
base the value of `age_group` off of age value
age 0-17 kid
age 18-64 adult
age >= 65 senior
implicit:
return the same hash object modified(mutated)
question:
will ages always be positive integers? -from example yes

E
{ "Herman" => { "age" => 32, "gender" => "male", "age_group" => "adult" },
  "Lily" => {"age" => 30, "gender" => "female", "age_group" => "adult" },
  "Grandpa" => { "age" => 402, "gender" => "male", "age_group" => "senior" },
  "Eddie" => { "age" => 10, "gender" => "male", "age_group" => "kid" },
  "Marilyn" => { "age" => 23, "gender" => "female", "age_group" => "adult" } }

D
hash

A
given a hash `munsters`
get age value for each key
  set `munsters` values to an array `profile`
  loop through `profile`
    initialize `age` variable to "age" value
    add new key value pair to value hash
      "age_group" key is set to the age group
        if age is 0-17 value is 'kid'
        else if age is 18-64 value is 'adult'
        else age is 'senior'
=end

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
profile = munsters.values

profile.map! do |hash|
  age = hash["age"]

  if age < 18
    hash['age_group'] = 'kid'
  elsif age >= 18 && age < 65
    hash['age_group'] = 'adult'
  else
    hash['age_group'] = 'senior'
  end
end

p munsters

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
profile = munsters.values

profile.map! do |hash|
  age = hash["age"]
  case
  when (0..17).include?(age)
    hash['age_group'] = 'kid'
  when (18..64).include?(age)
    hash['age_group'] = 'adult'
  else
    hash['age_group'] = 'senior'
  end
end

p munsters

=begin
A
given a hash `munsters`
loop through `munsters` with value parameter `name` and key `profile`
  evaluate a case for every `profile` "age" value `age`
  when `age` is included in the range 0-17
    `profile` age_group is kid
  when 'age` is included in the range 18-64
    `profile` age_group = adult
  else
    `profile` age_group = senior

=end
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, profile|
  case profile["age"]
  when 0..17
    profile["age_group"] = "kid"
  when 18..64
    profile["age_group"] = "adult"
  else
    profile["age_group"] = "senior"
  end
end

p munsters
