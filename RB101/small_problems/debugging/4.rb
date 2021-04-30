=begin
Reverse Sentence
The reverse_sentence method should return a new string with the words of its
argument in reverse order, without using any of Ruby's built-in reverse
methods. However, the code below raises an error. Change it so that it
behaves as expected.

This is using the string `+` method and passing in an Array as an argument
when this only accepts string arguments, so an exception is raised. One
solution is to change the string to an array and use the array `+` method.
=end
# def reverse_sentence(sentence)
#   words = sentence.split(' ')
#   reversed_words = []

#   i = 0
#   while i < words.length
#     reversed_words = words[i] + reversed_words
#     i += 1
#   end

#   reversed_words.join(' ')
# end

# p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

# One solution
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = [words[i]] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

# Provided solution using #unshift
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words.unshift(words[i])
    i += 1
  end

  reversed_words.join(' ')
end
p reverse_sentence('how are you doing')
