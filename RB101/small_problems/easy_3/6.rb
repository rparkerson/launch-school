=begin
P
input: 2 booleans
output: boolean

rules:
return true only if exactly 1 argument is truthy
name method xor?

mental model:
write a function xor that takes 2 arguments and returns true if exactly 1
argument is truthy else returns false.  returns a boolean.
E
xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false
D
booleans
A
compare the two arguments
set conditionals to check if both are true
or both are false
or one is false and one isn't
return a boolean true only if one is false one isn't
=end

def xor?(boolean1, boolean2)
  !boolean1 == boolean2 && !boolean1 == boolean2
end

p xor?(5.even?, 4.even?) #== true # false, true
p xor?(5.odd?, 4.odd?) #== true   # true, false
p xor?(5.odd?, 4.even?) #== false # true, true
p xor?(5.even?, 4.odd?) #== false # false, false

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

p xor?(5.even?, 4.even?) == true # false, true
p xor?(5.odd?, 4.odd?) == true   # true, false
p xor?(5.odd?, 4.even?) == false # true, true
p xor?(5.even?, 4.odd?) == false # false, false

def xor?(value1, value2)
  !!((value1 && !value2) || (value2 && !value1))
end

p xor?(5.even?, 4.even?) == true # false, true
p xor?(5.odd?, 4.odd?) == true   # true, false
p xor?(5.odd?, 4.even?) == false # true, true
p xor?(5.even?, 4.odd?) == false # false, false

def xor?(boolean1, boolean2)
  !boolean1 != !boolean2
end

p xor?(5.even?, 4.even?) #== true # false, true
p xor?(5.odd?, 4.odd?) #== true   # true, false
p xor?(5.odd?, 4.even?) #== false # true, true
p xor?(5.even?, 4.odd?) #== false # false, false
p xor?(3, 5)
