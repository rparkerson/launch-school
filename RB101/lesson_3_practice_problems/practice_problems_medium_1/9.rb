=begin
Consider these two simple methods:
What would be the return value of the following method invocation?
"no"
foo returns "yes" when no parameter is given and is passed in as an 
argument to the bar method. param in bar references the value yes and is
compared to "no" which evaluates to false, so the second ternary operator
expression is returned "no"
=end

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

p bar(foo)
