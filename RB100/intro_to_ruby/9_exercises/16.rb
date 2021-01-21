# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# iterate or loop over contacts hash populate data to empty hash
# can use Array .shift and .first methods

# keys = [:email, :address, :phone]

# contact_data[0].each do |value|
#   contacts["Joe Smith"][keys.shift] = value
# end

# p contacts

# keys = [:email, :address, :phone]
# index = 0

# contact_data[index].each do |value|
#   contacts["Joe Smith"][keys[index]] = value
#   index += 1 if index < contact_data.count
# end
# p contacts

# contact_data[1].each do |value|
#   key_list = keys
#   contacts["Sally Johnson"][key_list.shift] = value
# end
# p contacts

# book answer

# contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
# contacts = {"Joe Smith" => {}}
# fields = [:email, :address, :phone]

# contacts.each do |name, hash|
#   fields.each do |field|
#     hash[field] = contact_data.shift
#   end
# end

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
keys = [:email, :address, :phone]
flat_contact_data = contact_data.flatten

contacts.each do |name, hash|
  keys.each do |key|
    hash[key] = flat_contact_data.shift
  end
end

p contacts

# alternative solution
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

keys = [:email, :address, :phone]
x = -1
contacts.each do |key, hash|  #can use each_with_index to skip x counter
  x += 1
  keys.each do |label|
    hash[label] = contact_data[x].shift
  end
end
p contacts

# alternative with loop
keys = [:email, :address, :phone, :email, :address, :phone]
loop do
  if contact_data[0] != []
    contacts["Joe Smith"][keys.shift] = contact_data[0].shift
  elsif
    contact_data[1] != []
    contacts["Sally Johnson"][keys.shift] = contact_data[1].shift
  else
    break
  end
end
p contacts


# book solution bonus

# contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
#             ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
# contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
# fields = [:email, :address, :phone]

# contacts.each_with_index do |(name, hash), idx|
#   fields.each do |field|
#     hash[field] = contact_data[idx].shift
#   end
# end