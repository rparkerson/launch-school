=begin
Welcome Stranger
Create a method that takes 2 arguments, an array and a hash. The array
will contain 2 or more elements that, when combined with adjoining spaces,
will produce a person's name. The hash will contain two keys, :title and
:occupation, and the appropriate values. Your method should return a
greeting that uses the person's full name, and mentions the person's title
and occupation.

Example:

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

P
input: array(name) and hash(title/occupation keys) - 2 arguments
output: return a string (greeting with name and title and occupation)
rules
explicit:
use the array to output the name joined with spaces between each element
use the hash to output the title then occupation with space inbetween

E
greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
=> Hello, John Q Doe! Nice to have a Master Plumber around.

D
Array
hash
string

A
- join the names in greeting with spaces
- join the title value and occupatoin value with a space
- return a string
*string interpolation
=end

def greetings(name, status)
  full_name = name.join(' ')
  title = status[:title]
  occupation = status[:occupation]
  "Hello, #{full_name}! Nice to have a #{title} #{occupation} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.

#  Further exploration : shorten line for 80 character maximum
def greetings(name, status)
  "Hello, #{name.join(' ')}! Nice to have a #{status[:title]} "\
  "#{status[:occupation]} around."
end

puts greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
