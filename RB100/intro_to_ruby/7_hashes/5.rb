# What method could you use to find out if a Hash contains a specific value
# in it?
# Write a program to demonstrate this use.

heroes = { superman:  "Clark Kent", 
           batman:    "Bruce Wayne",
           spiderman: "Peter Parker"            
}

p heroes.has_value?("Peter Parker")

if heroes.has_value?("Peter Parker") then puts "My spidey sense is tingling!" end