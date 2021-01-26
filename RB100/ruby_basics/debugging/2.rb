# Our predict_weather method should output a message indicating 
# whether a sunny or cloudy day lies ahead. However, the output 
# is the same every time the method is invoked. Why? Fix the code 
# so that it behaves as expected.

def predict_weather
  sunshine = ['true', false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

predict_weather

# This is not referencing the true/false reserved words but strings
# which always evaluate to true. I removed the quotes so false would 
# evaluate to false.

def predict_weather
  sunshine = ['true', 'false'].sample
  if sunshine == 'true'
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end
