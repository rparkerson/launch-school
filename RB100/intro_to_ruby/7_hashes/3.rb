pets = {:dog=>"Spot", :cat=>"Fluffy", :turtle=>"Speedy"}

puts pets.keys.flatten
puts pets.values.flatten
puts pets.flatten


pets.each { |k, v| puts k}
pets.each { |k, v| puts v}
pets.each { |pair| puts pair }