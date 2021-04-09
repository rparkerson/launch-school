=begin
Now I Know My ABCs
A collection of spelling blocks has two letters per block, as shown in this
list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that
do not use both letters from any given block. Each block can only be used once.

Write a method that returns true if the word passed in as an argument can
be spelled from this set of blocks, false otherwise.

Examples:

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

P
input: string
output: boolean (true if spellable, else false)
rules
explicit:
write a method
if the word argument can be spelled with the blocks return true
else return false
each block can be used only once
only 1 letter on the block can be used
implicit:
there are 11 blocks
question:
Will the words be only letters or need letter verification? -not mentioned
E
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

D
array
strings

A
- initialize an array of the block values as strings
- iterate through the word character as a capital letter
  - if the letter is avaiable remove the block
  - if the letter is not availbe return false
- return true if iterated through everything with blocks available
=end

def block_word?(word)
  unused_blocks = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

  word.upcase.each_char do |char|
    if unused_blocks.any? { |block| block.include?(char) }
      unused_blocks.delete_if { |block| block.include?(char) }
    else
      return false
    end
  end

  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
p block_word?('aa') == false

def block_word?(word)
  unused_blocks = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)
  block_count = unused_blocks.size
  word.upcase.each_char do |char|
    unused_blocks.delete_if { |block| block.include?(char) }
    return false if block_count == unused_blocks.size
    block_count = unused_blocks.size
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

# Provided Solution
BLOCK = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCK.none? { |block| up_string.count(block) >=2 }
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
