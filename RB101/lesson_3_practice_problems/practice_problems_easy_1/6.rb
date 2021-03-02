# show two different ways to put the expected "Four score and " 
# in front of it.

famous_words = "seven years ago..."
more_words = "Four score and "
p more_words + famous_words
p "#{more_words}#{famous_words}"
p more_words << famous_words
p famous_words.prepend("Four score and ")

p more_words   # mutated from line 8
p famous_words # mutated from line 9
