=begin
ddaaiillyy ddoouubbllee

Write a method that takes a string argument and returns a new string that
contains the value of the original string with all consecutive duplicate
characters collapsed into a single character. You may not use String#squeeze
or String#squeeze!.

Examples:

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

P
input: string
output: return new string (consecutive duplicates removed)
rules
explicit:
creat a method
method takes a string
returns a new string
new string has consecutive duplicates removed
can not use String#squeeze
implicit:
empty string return '' string
don't mutate the original string
mental model:
create a method that takes a string and returns a new string with the
consecutive duplicate characters removed.

E
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

D
string

A
- remove or replace duplicate consecutive characters from sting
- create and return a new string with changes

create a method that takes a string
create an array of each character
initialize an empty string `crunched`
initialize `previous` variable and set to nil
loop through array
  append character to `crunched` string unless value of current
character equals the previous value 
  set previous to current character
return `crunched`
=end

def crunch(string)
  crunched = ''
  previous = nil
  
  string.chars.each do |char|
    crunched << char if char != previous
    previous = char
  end
  crunched
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

def crunch(string)
  crunched = ''
  string.chars.each { |char| crunched << char if char != crunched[-1] }
  crunched
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
def crunch(string)
  previous = nil

  string.chars.reduce('') do |crunched, char|
    crunched << char if char != previous
    previous = char
    crunched
  end
end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('') #== ''

=begin
Further Exploration
The string length is one more than the last index reference because the
index starts at 0.
Update the method below using String#each_char or String#chars
=end 

def crunch(text)
  index = 0
  crunch_text = ''
  while index <= text.length - 1
    crunch_text << text[index] unless text[index] == text[index + 1]
    index += 1
  end
  crunch_text
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

def crunch(text)
  crunch_text = ''
  text.chars.each_with_index do |_, index|
    crunch_text << text[index] unless text[index] == text[index + 1]
  end
  crunch_text
end

p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('') #== ''
