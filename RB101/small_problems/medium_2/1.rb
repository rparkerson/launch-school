=begin
Longest Sentence
Write a program that reads the content of a text file and then prints the
longest sentence in the file based on number of words. Sentences may end
with periods (.), exclamation points (!), or question marks (?). Any
sequence of characters that are not spaces or sentence-ending characters
should be treated as a word. You should also print the number of words in
the longest sentence.

Example text:

Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth.

The longest sentence in the above text is the last sentence; it is 86
words long. (Note that each -- counts as a word.)

Another Example

Download the book at http://www.gutenberg.org/cache/epub/84/pg84.txt,
and run your program on this file.

The longest sentence in this book is 157 words long.

P
input: text file contents
output: print string (longest sentence and number of words in sentence)
rules
explicit:
write a program
sentence ends with . ! or ?
words are any sequence of characters that are not spaces or ending charaters
print the number of words in the longest sentence
question:
how is a .txt text file scanned from an .rb program?
is preserving double spaced white space neccessary?
can we assume spaces are just single character blank space?
what if the sentences are the same size? - print out the first one found

E
from example text - 
"It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth." 
86 words long

D
arrays

A
- implement the code running within the given .txt file
- search text for longest sentence
- count the number of words in longest sentence
- print longest sentence and number of words in sentence

finding longest sentence
- initialize an empty array sentence
- initialize an array of ending characters . ! ?
- initialize end variable set to 0
- initialize a start variable set to 0
- convert the text into an array of words split on whitespaces
- iterate through the words with index
  - if the word ends with a ending character save index as end
    - if start to end array size > sentence array size
      - save start to end as sentence array
  - change start to end + 1
- count the number of words in sentence array and save as variable
- join the array with whitespace and print sentence and number of words

sample = <<-TEXT
Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth.
TEXT
=end

SENTENCE_ENDINGS = ['.', '!', '?']
text = File.read('sample.txt').split # file location
longest_sentence = []
start_index = 0

text.each_with_index do |word, index|
  if SENTENCE_ENDINGS.include?(word[-1])
    end_index = index
    sentence = text[start_index..end_index]
    longest_sentence = sentence if sentence.size > longest_sentence.size
    start_index = end_index + 1
  end
end

puts "The longest sentence is #{longest_sentence.count} words:"
puts "#{longest_sentence.join(' ')}"

# Further Exploration (Find the longest paragraph or longest word)
SENTENCE_ENDINGS = ['.', '!', '?']
text = sample.split # or File.read("/home/user/frankenstein.txt").split
long_sentence = []
start_index = 0
longest_word = ''

text.each_with_index do |word, index|
  if word.size > longest_word.size && !(word =~ /\.|\?|!/)
    longest_word = word
  end

  if SENTENCE_ENDINGS.include?(word[-1])
    end_index = index
    new_sentence = text[start_index..end_index]
    long_sentence = new_sentence if new_sentence.size > long_sentence.size
    start_index = end_index + 1
  end
end

puts "The longest word is #{longest_word}"
puts "The longest sentence is #{long_sentence.count} words:"
p "#{long_sentence.join(' ')}"

# Further Exploration (Find the longest paragraph or longest word)
# refactored without regex
SENTENCE_ENDINGS = ['.', '!', '?']
text = sample.split # or File.read("/home/user/frankenstein.txt").split
long_sentence = []
start_index = 0
longest_word = ''

def exclude_ending?(word)
  !(SENTENCE_ENDINGS.any? { |ending| word.include?(ending) })
end

text.each_with_index do |word, index|
  if word.size > longest_word.size && exclude_ending?(word)
    longest_word = word
  end

  if SENTENCE_ENDINGS.include?(word[-1])
    end_index = index
    new_sentence = text[start_index..end_index]
    long_sentence = new_sentence if new_sentence.size > long_sentence.size
    start_index = end_index + 1
  end
end

puts "The longest word is #{longest_word}"
puts "The longest sentence is #{long_sentence.count} words:"
p "#{long_sentence.join(' ')}"
