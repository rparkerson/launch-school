# Print out lyrics to 99 bottles of beer on the wall song.

beer = 99
beer_str = '99'

while beer >= 2
  puts beer_str + ' bottles of beer on the wall, ' + beer_str + ' bottles of beer.'
  beer = beer - 1
  beer_str = beer.to_s  
  puts 'Take one down, pass it around, ' + beer_str + ' bottles of beer on the wall...'
end

puts '1 bottle of beer on the wall, 1 bottle of beer.'
puts 'Take one down, pass it around, 0 bottles of beer on the wall...'
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall...'
