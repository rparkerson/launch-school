require 'yaml'

MESSAGES = YAML.load_file('calculator_messages.yml')

LANGUAGE = 'en'

def messages(message, lang = LANGUAGE)
  MESSAGES[lang][message]
end

def prompt(key)
  message = messages(key, LANGUAGE)
  if message.nil?
    Kernel.puts("=> #{key}")
  else
    Kernel.puts("=> #{message}")
  end
end

def number?(input)
  integer?(input) || float?(input)
end

def integer?(input)
  Integer(input) rescue false
end

def float?(input)
  Float(input) rescue false
end

def operation_to_message(op)
  message = case op
            when '1'
              'Adding'
            when '2'
              'Subtracting'
            when '3'
              'Multiplying'
            when '4'
              'Dividing'
            end

  message
end

prompt('welcome')

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt('valid_name')
  else
    break
  end
end

prompt("#{messages('greeting')} #{name}!")

loop do # main loop
  number1 = ''
  loop do
    prompt('first_number')
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt('invalid_number')
    end
  end

  number2 = ''
  loop do
    prompt('second_number')
    number2 = Kernel.gets().chomp()

    if number?(number2)
      break
    else
      prompt('invalid_number')
    end
  end

  # Heredoc delimiter can be anything if they match after <<-
  # operator_prompt = <<-MSG
  #   What operation would you like to perfom?
  #   1) add
  #   2) subtract
  #   3) multiply
  #   4) divide
  #   MSG

  # prompt(operator_prompt)

  prompt('what_operation')

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('invalid_operation')
    end
  end

  prompt("#{operation_to_message(operator)} #{messages('operation_text')}")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("#{messages('result')} #{result}")

  prompt('repeat')
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('goodbye')
