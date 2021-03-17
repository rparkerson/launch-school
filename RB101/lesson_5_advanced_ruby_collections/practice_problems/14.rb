=begin
Practice Problem 14
Given this data structure write some code to return an array containing the
colors of the fruits and the sizes of the vegetables. The sizes should be
uppercase and the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

The return value should look like this:

[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

P
input: hash ()
output: return array(color of fruits-capital, size of vegetables-uppercase)
rules
explicit:
return an array
color of fruits(array)(capital)
size of vegetable (uppercase)
implicit:
don't do anything with fruit size or vegetable color

E
=> [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

D
arrays and hashes

A
- iterate over hash values
- determine the type:
- access colors: value or size: value based on type
- alter colors: value or size: value based on type
- return array

initialize an empty array
iterate over each hsh value hash
  if hash type is fruit
    access colors value array
    capitalize words in array
    return appropriate value
  elsif hash type vegetable
    access size value
    return appropriate value
=end

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
arr = []
hsh.each_value do |hash|
  hash.each do |key, value|
    if value == 'fruit'
      arr << hash[:colors].map(&:capitalize)
    elsif value == 'vegetable'
      arr << hash[:size].upcase
    end
  end
end
p arr
p hsh

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
arr =
hsh.each_with_object([]) do |(_, hash), arr|
  hash.each do |key, value|
    if value == 'fruit'
      arr << hash[:colors].map(&:capitalize)
    elsif value == 'vegetable'
      arr << hash[:size].upcase
    end
  end
end
p arr
p hsh

# Provided Solution:
hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map do |color|
      color.capitalize
    end
  elsif value[:type] == 'vegetable'
    value[:size].upcase
  end
end
# => [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
