=begin
Madlibs Revisited
Let's build another program using madlibs. We made a program like this in
the easy exercises. This time, the requirements are a bit different.

Make a madlibs program that reads in some text from a text file that you
have created, and then plugs in a selection of randomized nouns, verbs,
adjectives, and adverbs into that text and prints it. You can build your
lists of nouns, verbs, adjectives, and adverbs directly into your program,
but the text data should come from a file or other external source. Your
program should read this text, and for each line, it should place random
words of the appropriate types into the text, and print the result.

The challenge of this program isn't about writing your program; it's about
choosing how to represent your data. Choose the right way to structure
your data, and this problem becomes a whole lot easier. This is why we
don't show you what the input data looks like; the input representation
is your responsibility.

Example output:

The sleepy brown cat noisily
licks the sleepy yellow
dog, who lazily licks his
tail and looks around.

Example text data

The %{adjective} brown %{noun} %{adverb}
%{verb} the %{adjective} yellow
%{noun}, who %{adverb} %{verb} his
%{noun} and looks around.

Example replacement words

    adjectives: quick lazy sleepy ugly
    nouns: fox dog head leg
    verbs: jumps lifts bites licks
    adverb: easily lazily noisily excitedly

P
input: read text file
output: print text from textfile with random nouns/verbs
explicit rules:
can build randomized nouns, verbs, adjectives, or adverbs into program
text data should come from an external file
program should read external text file
each line should place random words into the text
print the results
question:
does it have to use lists within the ruby program or can those be text?
-not specified
should the text from the file be specially formatted to indicate the parts
of speech that will be replaced? - not specified
can the parts of speech be reused or should they be unique? - not specified
mental model:
read in some some text and plug in a random selection of the parts of speech.
Use lists from the program to pick the random parts of speech. Each line
should place random words of the correct type in.

Example
Example output:
The sleepy brown cat noisily
licks the sleepy yellow
dog, who lazily licks his
tail and looks around.

Example text data
The %{adjective} brown %{noun} %{adverb}
%{verb} the %{adjective} yellow
%{noun}, who %{adverb} %{verb} his
%{noun} and looks around.

Example replacement words
    adjectives: quick lazy sleepy ugly
    nouns: fox dog head leg
    verbs: jumps lifts bites licks
    adverb: easily lazily noisily excitedly

D
arrays

A
- read in text file and assign to a variable as a string object
- initialize a hash with key as part of speech and value an array of choices
- put in a random noun, verb, adjective or adverb
- print the result

=end
ADJECTIVES = %w(quick lazy sleepy ugly)
NOUNS = %w(fox dog head leg)
VERBS = %w(jumps lifts bites licks)
ADVERBS = %w(easily lazily noisily excitedy)

text = File.read('madlibs.txt')  # file location
options = {'%{adjective}' => ADJECTIVES, '%{noun}' => NOUNS,
           '%{verb}' => VERBS, '%{adverb}' => ADVERBS}

options.each do |word_type, words_list|
  random_words = words_list.shuffle
  text.gsub!(word_type) { random_words.pop }
end

puts text

# Provided Solution
ADJECTIVES = %w(quick lazy sleepy ugly).freeze
NOUNS      = %w(fox dog head leg cat tail).freeze
VERBS      = %w(spins bites licks hurdles).freeze
ADVERBS    = %w(easily lazily noisly excitedly).freeze

File.open('madlibs.txt') do |file|
  file.each do |line|
    puts format(line, noun:      NOUNS.sample,
                      verb:      VERBS.sample,
                      adjective: ADJECTIVES.sample,
                      adverb:    ADVERBS.sample)
  end
end
