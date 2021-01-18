puts "Please type in your name: "
name = gets.chomp

puts "Hello #{name}, it is nice to meet you."

# 10.times { |i| puts i = name }
# 10.times { |i| puts name }
10.times { puts name }

(1..10).each { puts name }
