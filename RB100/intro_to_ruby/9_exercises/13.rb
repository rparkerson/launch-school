arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

p arr.delete_if { |word| word.start_with?("s") }

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# arr.delete_if { |word| word.start_with?("s") || word.start_with?("w") }

# arr.delete_if { |word| word.start_with?("s", "w") }

# regex
arr.delete_if { |word| word.start_with?(/s|w/) }

p arr