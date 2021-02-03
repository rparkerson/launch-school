#  Read in names and birth dates from a text file.
#  use birthday.txt
#  Prompt ask for a name. output when the next birthday will be
#  *Bonus* how old they will be
#  Can use each_line string method for iteration
#  Can use a hash for name birthdate
#  mental model:
#  open file iterate through file to find a match
#  output the birthday on the same line

filename = 'birthday.txt'
hash = {}
read_string = File.read filename

read_string.each_line do |line|
  hash[line[0..21]] = line[24..35]
end
p hash

puts "Whos birthday do you want to see?"
name = gets.chomp

hash.each do |key, value|
  if key.downcase.include?(name.downcase)
    puts "#{name}'s next birthday is #{value}."
  end
end
