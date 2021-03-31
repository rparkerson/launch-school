=begin
Lettercase Counter
Write a method that takes a string, and then returns a hash that contains 3
entries: one represents the number of characters in the string that are
lowercase letters, one the number of characters that are uppercase letters,
and one the number of characters that are neither.

Examples

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

P
input: string
output: hash (3 key values)
rules
explicit:
write a method
takes a string
returns a hash
hash has 3 key value pairs
number of lowercase letters
number of uppercase letters
number of characters that are neither
implicit:
spaces count as neither
the total characters will always equal the sum of the hash values
default to 0 if none
keys are symbols

E
letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

D
strings
arrays

A

- initialize an empty hash with 3 keys(lowercase, uppercase, neither) set to 0 
- iterate through each character in the string
- if lower letter increment lower letter one
- else if capital capital letter increment capital letter one
- else increment neither 1

*string method to check if capital/lowercase
*downcase *upcase
=end

def letter_case_count(str)
  counts = {lowercase: 0, uppercase: 0, neither: 0}

  str.each_char do |char|
    case char
    when char.swapcase then counts[:neither] += 1
    when char.downcase then counts[:lowercase] += 1
    when char.upcase then counts[:uppercase] += 1
    end
  end

  counts
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

LOWERCASE = [*'a'..'z']
UPPERCASE = [*'A'..'Z']

def letter_case_count(str)
  counts = {lowercase: 0, uppercase: 0, neither: 0}

  str.each_char do |char|
    if LOWERCASE.include?(char)
      counts[:lowercase] += 1
    elsif UPPERCASE.include?(char)
      counts[:uppercase] += 1
    else
      counts[:neither] += 1
    end
  end

  counts
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
