# Can hash values be arrays? 
# Can you have an array of hashes? (give examples)

# yes and yes

hash_with_arrays_as_values = {numbers: [1, [2, 4], 3], letters: ["a", "b"]}
p hash_with_arrays_as_values

array_of_hashes = [{believe:"It is possible"}, {a:1, b:2}]
p array_of_hashes