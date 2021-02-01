def double_this num
  num_times_2 = num*2
  puts num.to_s+' doubled is '+num_times_2.to_s
end
double_this 44
# puts num_times_2  # Can't be accessed outside the method

tough_var = 'You can\'t even touch my variable!'

def little_pest tough_var
  tough_var = nil
  puts 'HAHA!  I ruined your variable!'
end

little_pest tough_var
puts tough_var

def square x
  puts(x * x)
end

x = 5
square x

my_number = 5
square my_number

x = 10
my_number = x / 2
square my_number

def square liauwechygfakcuewhalcufe
  liauwechygfakcuewhalcufe * liauwechygfakcuewhalcufe
end
