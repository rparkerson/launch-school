=begin
Bannerizer

Write a method that will take a short line of text, and print it within a box.

Example:

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

You may assume that the input will always fit in your terminal window.

P
input: string (short line of text)
output: print string (formated into a box around the text)
rules
explicit:
print the string inside the box
input will fit in your terminal window
implicit:
box is a series of strings and new lines
box size is relative to the size of the string
string will always be one line


E
Example:
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

D
strings

A
print 5 lines of text
measure length of text
extend box based on text size

create method that takes string `text`
measure length of string `size`
pad first and last line with - equal to size
=end

def print_in_box(text)
  pad_size = text.size
  puts("+-#{''.center(pad_size, '-')}-+
| #{''.center(pad_size, ' ')} |
| #{text} |
| #{''.center(pad_size, ' ')} |
+-#{''.center(pad_size, '-')}-+")
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

def print_in_box(text)
  pad1 = ''.center(text.size, '-')
  pad2 = ''.center(text.size, ' ')

  puts("+-#{pad1}-+
| #{pad2} |
| #{text} |
| #{pad2} |
+-#{pad1}-+")
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

def print_in_box(text)
  pad1 = ''.center(text.size, '-')
  pad2 = ''.center(text.size, ' ')

  puts "+-#{pad1}-+"
  puts "| #{pad2} |"
  puts "| #{text} |"
  puts "| #{pad2} |"
  puts "+-#{pad1}-+"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')

#  Further Exploration(a) - truncate text if it won't fit in 80 columns
# MAX_SIZE = 76

def print_in_box(text)
  text = text[0, MAX_SIZE]
  pad1 = ''.center(text.size, '-')
  pad2 = ''.center(text.size, ' ')

  puts("+-#{pad1}-+
| #{pad2} |
| #{text} |
| #{pad2} |
+-#{pad1}-+")
end

print_in_box('To boldly go where no one has gone before.' +
'To boldly go where no one has gone before.')
print_in_box('')

#  Further Exploration(b) - For a real challenge, try word wrapping very
#  long messages so they appear on multiple lines, but still within a box.
MAX_SIZE = 76

def middle_box_printer(text)
  text = text[0, MAX_SIZE]
  puts "| #{text} |"
end

def print_in_box(text)
  
  size = text.size
  pad1 = ''.center(size, '-')
  pad2 = ''.center(size, ' ')

  puts "+-#{pad1}-+"
  puts "| #{pad2} |"

  middle_box_printer(text)
  
  puts "| #{pad2} |"
  puts "+-#{pad1}-+"
end

print_in_box('To boldly go where no one has gone before.' +
'To boldly go where no one has gone before.')
print_in_box('')
