=begin
Practice Problem 16
A UUID is a type of identifier often used as a way to uniquely identify 
items...which may not all be created by the same system. That is, without
any form of synchronization, two or more separate computer systems can
create new items and label them with a UUID with no significant chance
of stepping on each other's toes.

It accomplishes this feat through massive randomization. The number of
possible UUID values is approximately 3.4 X 10E38.

Each UUID consists of 32 hexadecimal characters, and is typically broken
into 5 sections like this 8-4-4-4-12 and represented as a string.

It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

Write a method that returns one UUID when called with no parameters.

P
input: none
output: string (UUID format with 32 hexadecimals)
rules
explicit:
write a method with no parameters
returns one UUID
UUID is a 32 digits
each character is a hexadecimal
implicit:
format it with dashes (8-4-4-4-12)
each hexadecimal is a single character (so 0 through 16)

E
=> "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91" (values will likely differ)

D
strings

A
- generate 32 random single character hexadecimals
- combione 32 hexadecimals
- combine them into a string with proper dashes

initialize an empty string `uuid`
create a loop
  if string length is 8, 13, 18, 23 append a dash instead
  generate a random number from 0 to 16 and convert to a hexadecimal
  append hex to `uuid`
  break if string length is 36 characters long
return string

=end

DASH_PLACES = [8, 13, 18, 23]
MAX_SIZE = 36

def uuid_generator
  uuid = ''
  loop do
    uuid << '-' if DASH_PLACES.include?(uuid.size)
    uuid << rand(16).to_s(16)
    break if uuid.size == MAX_SIZE
  end
  uuid
end

p uuid_generator

# DASH_PLACES = [8, 13, 18, 23]
# MAX_SIZE = 36

def uuid_generator
  uuid = ''
  while uuid.size < MAX_SIZE
    uuid << '-' if DASH_PLACES.include?(uuid.size)
    uuid << rand(16).to_s(16)
  end
  uuid
end

p uuid_generator

# Provided Solution
def generate_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end
p generate_UUID

require 'securerandom'

def generate_UUID
  SecureRandom.uuid
end
p generate_UUID

def rand_hex(n)
  string = ''
  n.times { string += rand(16).to_s(16) }
  string
end

def generate_uuid
  "#{rand_hex(8)}-#{rand_hex(4)}-#{rand_hex(4)}-#{rand_hex(4)}-#{rand_hex(12)}"
end

p generate_uuid
