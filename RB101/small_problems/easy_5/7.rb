=begin
Letter Counter (Part 2)
Modify the word_sizes method from the previous exercise to exclude non-letters
when determining word size. For instance, the length of "it's" is 3, not 4.

Examples

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

P
input: string
output: hash
rules
explicit:
modifty previous word_sizes method
exclude non-letters when determining word size

E
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}

D
arrays

A
- delete all symbols that are not letters (a-z or A-Z)

create a constant `ALPHABET` arrays with (a-z and A-Z)
check if each character of the string is in `ALPHABET`
  if not delete character
return mutated string

=end

ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

def delete_non_letters!(string)
  string.each_char do |char|
    string.delete!(char) unless ALPHABET.include?(char) || char == ' '
  end
end

def word_sizes(string)
  word_size = {}
  delete_non_letters!(string)

  string.split.each do |word|
    size = word.size
    if word_size.include?(size)
      word_size[size] += 1
    else
      word_size[size] = 1
    end
  end

  word_size
end

p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") #== { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') #== {}
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

#  Refactored to not mutate string
ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a

def select_non_letters(string)
  string.chars.select { |char| ALPHABET.include?(char) || char == ' ' }.join
end

def word_sizes(string)
  word_size = {}

  string.split.each do |word|
    clean_word = select_non_letters(word) 
    size = clean_word.size

    if word_size.include?(size)
      word_size[size] += 1
    else
      word_size[size] = 1
    end
  end

  word_size
end

p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") #== { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') #== {}
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}

#  Given solution
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    clean_word = word.delete('^A-Za-z')
    counts[clean_word.size] += 1
  end
  counts
end
