# Given the following code, use Array 
# #each to print the plural of each 
# word in words.

# words = 'car human elephant airplane'

# Expected output:

# cars
# humans
# elephants
# airplanes

words = 'car human elephant airplane'
words.split.each { |word| puts word + 's' }

words = 'car human elephant airplane'
puts words.split(' ').each { |word| word << 's' }

# student example
words = 'car human elephant airplane'

words.scan(/\w+/) {|w| puts w + 's' }

# another student example with regex
words = 'car human elephant airplane'
puts words.gsub(/([a-z]+) ?/, "\\1s\n")