def log string, &block
  puts "Beginning \"#{string}\"..."
  result = block.call
  puts "...\"#{string}\" finished, returning: "
  puts result
end

log 'outer block' do 
  log 'some little block' do
    5
  end
  log 'yet another block' do
    'I like Thai food!'
  end
  false
end
