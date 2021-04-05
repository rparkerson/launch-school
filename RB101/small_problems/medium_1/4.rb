=begin
1000 Lights
You have a bank of switches before you, numbered from 1 to n. Each switch
is connected to exactly one light that is initially off. You walk down the
row of switches and toggle every one of them. You go back to the beginning,
and on this second pass, you toggle switches 2, 4, 6, and so on. On the
third pass, you go back again to the beginning and toggle switches 3, 6, 9,
and so on. You repeat this process and keep going until you have been
through n repetitions.

Write a method that takes one argument, the total number of switches, and
returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

    round 1: every light is turned on
    round 2: lights 2 and 4 are now off; 1, 3, 5 are on
    round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
    round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
    round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

The result is that 2 lights are left on, lights 1 and 4. The return value is
[1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is
[1, 4, 9].

P
input: integer (n - total number of switches)
output: new array (identifies which lights are on - 1 through n)
rules
explicit:
n is the number of switches
every switch is off to begin (before first iteration)
iterate through each number from 1 through n
toggle the switches counting by the number 1,2,3 etc then 2, 4, 6 etc
repeat until you have been through n times
identify which switches are on after n repetitions
return an array of the numbers of the on lights
implicit:
return the array from lowest to highest

E
Example with n = 5 lights:

    round 1: every light is turned on
    round 2: lights 2 and 4 are now off; 1, 3, 5 are on
    round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
    round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
    round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

The result is that 2 lights are left on, lights 1 and 4. The return value is
[1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is
[1, 4, 9].

D
arrays

A
- n is the number of switches
- initialize an array of n elements set to boolean false
- iterate through numbers 1 through n
  - count by number and toggle boolean at every number
- return an array of all the true values (index + 1)
=end

def on_switches(n)
  switches = [false] * n

  (1..n).each do |num|
    (num - 1).step(by: num, to: n - 1) do |index|
      switches[index] = !switches[index]
    end
  end

  switches.map.with_index { |switch, index| index + 1 if switch }.compact
end

p on_switches(5) # => [1, 4]
p on_switches(10) # => [1, 4, 9]

=begin
- n is number of switches
- initialize a hash with keys 1 through n and default values to false
- iterate through the range 1 through n
  - toggle every value counting by each range value (1..n)
- return the hash keys with the values of true
=end

def on_switches(total_switches)
  switches = {}
  (1..total_switches).each { |num| switches[num] = false }

  (1..total_switches).each do |number|
    (number).step(by:number, to: total_switches) do |num|
      switches[num] = !switches[num]
    end
  end

  switches.select { |_, switch_on| switch_on }.keys
end

p on_switches(5) # => [1, 4]
p on_switches(10) # => [1, 4, 9]

# Multiple helper methods
def initialize_lights(number_of_lights)
  lights = {}
  (1..number_of_lights).each { |number| lights[number] = false }
  lights
end

def toggle_every_nth_light(lights, nth)
  (nth).step(by:nth, to: lights.size) do |number|
    lights[number] = !lights[number]
  end
end

def on_lights(lights)
  lights.select { |_number, light_on| light_on }.keys
end

def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)

  (1..lights.size).each do |number|
    toggle_every_nth_light(lights, number)
  end

  on_lights(lights)
end

p toggle_lights(5) # => [1, 4]
p toggle_lights(10) # => [1, 4, 9]
p toggle_lights(1000)

# Provided Solution:
# initialize the lights hash
def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = "off" }
  lights
end

# return list of light numbers that are on
def on_lights(lights)
  lights.select { |_position, state| state == "on" }.keys
end

# toggle every nth light in lights hash
def toggle_every_nth_light(lights, nth)
  lights.each do |position, state|
    if position % nth == 0
      lights[position] = (state == "off") ? "on" : "off"
    end
  end
end

# Run entire program for number of lights
def toggle_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(lights.size) do |iteration_number|
    toggle_every_nth_light(lights, iteration_number)
  end

  on_lights(lights)
end

p toggle_lights(1000)

=begin
Further Exploration
1. There is a pattern that every on light is a perfect square because of how
the pattern goes.  Lights that are toggled an odd number of times stay on.
2. See above for an solution using Arrays instead of a Hash for lights.
3. We could have a method that replicates the output from the description of
this problem (i.e. "lights 2, 3, and 5 are now off; 1 and 4 are on.")
How would we go about writing that code? (see below)
=end

# Formating for results into a string
def list_lights(arr)
  case arr.size
  when 1
    arr.first
  when 2
    arr.join(' and ')
  else
    arr[0...-2].join(', ') + ', ' + arr[-2..-1].join(', and ')
  end
end

def display_results_str(results_arr)
  "The result is that #{results_arr.size} lights are left on: lights "\
  "#{list_lights(results_arr)}. The return value is #{results_arr} "
end

def on_switches(total_switches)
  switches = {}
  (1..total_switches).each { |num| switches[num] = false }

  (1..total_switches).each do |number|
    (number).step(by:number, to: total_switches) do |num|
      switches[num] = !switches[num]
    end
  end

  results_arr = switches.select { |_, switch_on| switch_on == true}.keys
  display_results_str(results_arr)
end

puts on_switches(5) # => [1, 4]
puts on_switches(10) # => [1, 4, 9]
puts on_switches(50)
