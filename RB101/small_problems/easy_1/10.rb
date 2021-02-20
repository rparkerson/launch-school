=begin
P 
input: an integer(salary) and a boolean
output: bonus based on salary/2 (integer)
mental model: return half salary if true else return 0.
E
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
D
integers
A
If the boolean is true return salary/2 else return 0
=end

def calculate_bonus(salary, bonus)
  bonus ? salary/2.0 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
puts calculate_bonus(999, true) == 499.5    # added by student

def calculate_bonus(salary, bonus)
  return salary/2.0 if bonus
  0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

def calculate_bonus(salary, bonus)
  if bonus
    salary / 2.0
  else
    0
  end
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
