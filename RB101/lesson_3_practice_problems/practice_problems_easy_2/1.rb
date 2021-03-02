=begin
In this hash of people and their age,
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
see if "Spot" is present.
Bonus: What are two other hash methods that would work just as well for
this solution?
=end

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

p ages["Spot"]        # returns value of key "Spot" or nil otherwise
                      # This would not work well if the value was nil
p ages.include?("Spot")
p ages.key?("Spot")     # alias to include?
p ages.has_key?("Spot") # alias to include?
p ages.member?("Spot")  # alias to include?

p ages.fetch("Spot")  # Returns value for key if found or default or KeyError
