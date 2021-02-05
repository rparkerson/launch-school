$nesting_depth = 0
def log string, &block
  prefix = '  ' * $nesting_depth
  puts "#{prefix}Beginning \"#{string}\"..."
  $nesting_depth = $nesting_depth + 1
  result = block.call
  puts "#{prefix}...\"#{string}\" finished, returning: "
  puts "#{prefix}#{result}"
  $nesting_depth = $nesting_depth - 1
end

log 'outer block' do 
  log 'some little block' do
    log 'teeny-tiny block' do
      'lots of love'
    end
    42
  end
  log 'yet another block' do

    'I like Thai food!'
  end
  true
end
