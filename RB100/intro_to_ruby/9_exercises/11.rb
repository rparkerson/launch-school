# Given the following data structures. Write a program that copies the
# information from the array into the empty hash that applies to the 
# correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }

# Overides existing hash with new hash.  Output same but doesn't
# all requirements
# contacts["Joe Smith"] = {email: contact_data.flatten[0], address: contact_data.flatten[1], phone:contact_data.flatten[2]} 
# contacts["Sally Johnson"] = {email: contact_data.flatten[3], address: contact_data.flatten[4], phone:contact_data.flatten[5]} 
# p contacts

# copy information from array into empty hash
# how to add to hash  how to turn array element

# book answer
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

p contacts