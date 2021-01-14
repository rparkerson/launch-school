a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']

# one word arrays as a new array.  can use .map .flatten .split
# split strings with a space(all of them) then flatten to single dimensional
# array
new_arr = []
a.each { |words| new_arr << words.split(" ") }

p new_arr = new_arr.flatten

new_arr = a.map { |words| words.split }.flatten
p new_arr