family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
pets = {
        dog: "Spot",
        cat: "Fluffy",
        turtle: "Speedy"     
}

p family.merge(pets)
p family
p pets

p family.merge!(pets)
p family
p pets

# merge and merge! return the same value but merge! is destructive, 
# and changes the hash permanently that called the merge! method.