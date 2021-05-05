=begin
Neutralizer
We wrote a neutralize method that removes negative words from sentences.
However, it fails to remove all of them. What exactly happens?

On `line 18` the `puts` method outputs the return value of calling the
`neutralize` method and passing it a string as an argument. 

Within the neutralize method the argument is saved to the local variable
sentence and on `line 2` the `split` method is called on the string object 
the variable `sentence` references, which returns a new array. The local
variable `words` is initialized to this returned array.

On `line 3` the `each` method is called on the array that the local variable
`words` refernces with the `do..end` block on `lines 3-4`. 

Within the block the method `delete` is called on the array the variable `words`
references which mutates the array object as it is being iterated over with
`each` if the condition is met. 

This causes the `each` method to not iterate over every element in the array,
as the objects at certain index references positions changed.

This can be resolved by creating a copy to iterate over, or creating a new
object to iterate over that is not mutated.
=end
def neutralize(sentence)
  words = sentence.split(' ')
  words.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# Solution 1
def neutralize(sentence)
  words = sentence.split(' ')
  words.clone.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# Solution 2
def neutralize(sentence)
  words = sentence.split(' ')
  unchanged_words = sentence.split(' ')
  unchanged_words.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# Provided solution with reject
def neutralize(sentence)
  words = sentence.split(' ')
  words.reject! { |word| negative?(word) }
  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
#=> These cards are part of a board game.

=begin
Further Exploration

Note that we use reject! here, which does mutate the array while iterating over
it. But the way reject! is implemented, it takes special care to avoid the
problem we had in our code. We could re-implement it in Ruby as follows:

def mutating_reject(array)
  i = 0
  loop do
    break if i == array.length

    if yield(array[i]) # if array[i] meets the condition checked by the block
      array.delete_at(i)
    else
      i += 1
    end
  end

  array
end

For now, just read if yield(array[i]) as "if array[i] meets the condition
checked by the block"; you will learn about using blocks in methods in course
RB130. The important point is that i is not increased when the condition
is met and the element is removed. This prevents the loop from skipping
over elements like what happened in our case.
=end
