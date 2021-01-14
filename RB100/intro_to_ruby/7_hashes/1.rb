family = { uncles: ["bob", "joe", "steve"],
           sisters: ["jane", "jill", "beth"],
           brothers: ["frank", "rob", "dave"],
           aunts: ["mary", "sally", "susan"]

          }


immediate_family = family.select do |relation, name| 
  relation == :sisters || relation == :brothers
end

p immediate_family
array = immediate_family.values.flatten
p array