=begin
Staggered Caps (Part 2)
Modify the method from the previous exercise so it ignores non-alphabetic
characters when determining whether it should uppercase or lowercase each
letter. The non-alphabetic characters should still be included in the return
value; they just don't count when toggling the desired case.

Example:

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

P
input: string
output: new string
rules
explicit:
write a method
takes a single string argument
returns a new string
new string has every other letter character capitalized
non- letters do not count as an the alternation but are included in output
implicit:
start with first letter of string capitalized

E
staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

D
strings
arrays

A
- write a method takes a string returns a new string
- alternate capitilization only on letters

- initialize result as an empty string (stores new string)
- initialize a capitalize toggle 'need upper'
- create an array - each character of string as an element
- iterate through the array
  - if need_upper is true
    - capitalize character
  - else downcase letter
  - flip toggle if character is a letter (a-z A-Z) *regex
=end

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      char.upcase!
    else 
      char.downcase!
    end
    result << char
    need_upper = !need_upper if char =~ /[A-Za-z]/
  end 
  result
end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# Refactored with map further exploration (change from letters only or not)
def staggered_case(string, letters_only = true)
  match = (letters_only ? /[a-z]/i : // )
  need_upper = true
  string.chars.each do |char|
    need_upper ? char.upcase! : char.downcase!
    need_upper = !need_upper if char =~ match
  end.join
end

p staggered_case('I Love Launch School!') #== 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

#  Refactored argument
def staggered_case(string, count_non_alpha = false)
  need_upper = true
  string.chars.each do |char|
    need_upper ? char.upcase! : char.downcase!
    need_upper = !need_upper if char =~ /[a-z]/i || count_non_alpha
  end.join
end

p staggered_case('I Love Launch School!', true) #== 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
