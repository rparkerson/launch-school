# Turn this into an array containing only two elements: 
# Barney's name and Barney's number

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, 
                "BamBam" => 4, "Pebbles" => 5 }

flintstones.to_a[2]         # => ["Barney", 2]
flintstones.assoc("Barney") # => ["Barney", 2]
