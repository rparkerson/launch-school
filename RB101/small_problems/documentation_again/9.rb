require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

#  https://docs.ruby-lang.org/en/3.0.0/Psych.html#method-c-load_file 
#  YAML module is an alias of Psych, the YAML engine for Ruby.  
#  libyaml wrapper Psych
