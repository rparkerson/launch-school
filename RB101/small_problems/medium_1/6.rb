=begin
Stack Machine Interpretation

A stack is a list of values that grows and shrinks dynamically. In ruby,
a stack is easily implemented as an Array that just uses the #push and
#pop methods.

A stack-and-register programming language is a language that uses a stack
of values. Each operation in the language operates on a register, which
can be thought of as the current value. The register is not part of the
stack. Operations that require two values pop the topmost item from the
stack (that is, the operation removes the most recently pushed value from
the stack), perform the operation using the popped value and the register
value, and then store the result back in the register.

Consider a MULT operation in a stack-and-register language. It multiplies
the stack value with the register value, removes the value from the stack,
and then stores the result back in the register. Thus, if we start with a
stack of 3 6 4 (where 4 is the topmost item in the stack), and a register
value of 7, then the MULT operation will transform things to 3 6 on the
stack (the 4 is removed), and the result of the multiplication, 28, is
left in the register. If we do another MULT at this point, then the stack
is transformed to 3, and the register is left with the value 168.

Write a method that implements a miniature stack-and-register-based
programming language that has the following commands:

    n Place a value n in the "register". Do not modify the stack.
    PUSH Push the register value on to the stack. Leave the value in the register.
    ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
    SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
    MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
    DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
    MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
    POP Remove the topmost item from the stack and place in register
    PRINT Print the register value

All operations are integer operations (which is only important with DIV
and MOD).

Programs will be supplied to your language method via a string passed in
as an argument. Your program may assume that all programs are correct
programs; that is, they won't do anything like try to pop a non-existent
value from the stack, and they won't contain unknown tokens.

You should initialize the register to 0.

P
input: integers and strings (commands) 
output: integer (prints the register value with print)
        (values are stored in register and in the stack - arrays)
rules
explicit:
write a method that implements a stack and register type commands
uses commands: n, PUSH, ADD, SUB, MULT, DIV, MOD, POP, PRINT
all operations are integer operations
programs are supplied via a single string as an argument
assume all programs are correct (no typos, invalid command orders POP nothing)
initialize the register to 0
implicit:
integers can be negative
question: are multi-digit numbers handled/input? -no examples- but yes

E
Examples:

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)

D
Arrays

A
- define the minilang method that takes a string as an argument
- initialize a register variable set it to 0
- initialize a stack variable and set it to an empty array
- break the string into seperate commands
  - store each seperate value as an array element
  - perform the sequences in order *case statement
    - iterate through the array
    - if PUSH execute push method 
    - if ADD execute add method
    - ...etc for each command except n (integer)
    - else convert to an integer and set as register value

=end

def minilang(str)
  register = 0
  stack = []

  str.split.each do |command|
    case command
    when 'PUSH'  then stack.push(register)
    when 'ADD'   then register += stack.pop
    when 'SUB'   then register -= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'POP'   then register = stack.pop
    when 'PRINT' then puts register
    else              register = command.to_i
    end
  end
end

minilang('3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DIV PRINT')
minilang('PRINT')
# 0
minilang('5 PUSH 3 MULT PRINT')
# 15
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# # 5
# # 3
# # 8
minilang('5 PUSH POP PRINT')
# 5
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12
minilang('-3 PUSH 5 SUB PRINT')
# 8
minilang('6 PUSH')
# (nothing printed; no PRINT commands)

# Further Exploration
def stack_error?(stack, token)
  pop_token_commands = ["ADD", "SUB", "MULT", "DIV", "MOD", "POP"]
  stack.empty? && pop_token_commands.include?(token)
end

def is_integer?(str)
  str.to_i.to_s == str
end

def minilang(str)
  register = 0
  stack = []

  str.split.each do |token|
    return puts "ERROR: Empty Stack" if stack_error?(stack, token)
    case token
    when 'PUSH'  then stack.push(register)
    when 'ADD'   then register += stack.pop
    when 'SUB'   then register -= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'POP'   then register = stack.pop
    when 'PRINT' then puts register
    else
      if is_integer?(token)
        register = token.to_i
      else
        return puts "ERROR: Invalid Input: '#{token}'"
      end
    end
  end
end

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
minilang('0 TACO ADD PRINT')
minilang('ADD')
