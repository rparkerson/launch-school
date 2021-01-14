hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# output:  These hashes are the same!
# because the syntax of key assignment(key value association)
# in hashes and the order of the hash pairs do not affect the (==) equality 
# conditional.