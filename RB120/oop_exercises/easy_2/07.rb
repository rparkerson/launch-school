=begin
Pet Shelter

Consider the following code:

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

Write the classes and methods that will be necessary to make this code run,
and print the following output:

P Hanson has adopted the following pets:
a cat named Butterscotch
a cat named Pudding
a bearded dragon named Darwin

B Holmes has adopted the following pets:
a dog named Molly
a parakeet named Sweetie Pie
a dog named Kennedy
a fish named Chester

P Hanson has 3 adopted pets.
B Holmes has 4 adopted pets.

The order of the output does not matter, so long as all of the information
is presented.
=end

# class Pet
#   attr_reader :name, :type

#   def initialize(type, name)
#     @type = type
#     @name = name
#   end
# end

# class Owner
#   attr_reader :name, :number_of_pets

#   def initialize(name)
#     @name = name
#     @number_of_pets = 0
#   end

#   def increment_number_of_pets
#     @number_of_pets += 1
#   end
# end

# class Shelter
#   def initialize
#     @owners = {}
#   end

#   def adopt(owner, pet)
#     if @owners.include?(owner.name)
#       @owners[owner.name] << pet
#     else
#       @owners[owner.name] = [pet]
#     end
#     owner.increment_number_of_pets
#   end

#   def print_adoptions
#     @owners.each do |owner, pets|
#       puts "#{owner} has adopted the folling pets:"
#       pets.each { |pet| puts "a #{pet.type} named #{pet.name}" }
#       puts
#     end
#   end
# end

# butterscotch = Pet.new('cat', 'Butterscotch')
# pudding      = Pet.new('cat', 'Pudding')
# darwin       = Pet.new('bearded dragon', 'Darwin')
# kennedy      = Pet.new('dog', 'Kennedy')
# sweetie      = Pet.new('parakeet', 'Sweetie Pie')
# molly        = Pet.new('dog', 'Molly')
# chester      = Pet.new('fish', 'Chester')

# phanson = Owner.new('P Hanson')
# bholmes = Owner.new('B Holmes')

# shelter = Shelter.new
# shelter.adopt(phanson, butterscotch)
# shelter.adopt(phanson, pudding)
# shelter.adopt(phanson, darwin)
# shelter.adopt(bholmes, kennedy)
# shelter.adopt(bholmes, sweetie)
# shelter.adopt(bholmes, molly)
# shelter.adopt(bholmes, chester)
# shelter.print_adoptions
# puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
# puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

# # LS provided solution:
# class Pet
#   attr_reader :animal, :name

#   def initialize(animal, name)
#     @animal = animal
#     @name = name
#   end

#   def to_s
#     "a #{animal} named #{name}"
#   end
# end

# class Owner
#   attr_reader :name, :pets

#   def initialize(name)
#     @name = name
#     @pets = []
#   end

#   def add_pet(pet)
#     @pets << pet
#   end

#   def number_of_pets
#     pets.size
#   end

#   def print_pets
#     puts pets
#   end
# end

# class Shelter
#   def initialize
#     @owners = {}
#   end
  
#   def adopt(owner, pet)
#     owner.add_pet(pet)
#     @owners[owner.name] ||= owner
#   end

#   def print_adoptions
#     @owners.each_pair do |name, owner|
#       puts "#{name} has adopted the following pets:"
#       owner.print_pets
#       puts
#     end
#   end
# end

# butterscotch = Pet.new('cat', 'Butterscotch')
# pudding      = Pet.new('cat', 'Pudding')
# darwin       = Pet.new('bearded dragon', 'Darwin')
# kennedy      = Pet.new('dog', 'Kennedy')
# sweetie      = Pet.new('parakeet', 'Sweetie Pie')
# molly        = Pet.new('dog', 'Molly')
# chester      = Pet.new('fish', 'Chester')

# phanson = Owner.new('P Hanson')
# bholmes = Owner.new('B Holmes')

# shelter = Shelter.new
# shelter.adopt(phanson, butterscotch)
# shelter.adopt(phanson, pudding)
# shelter.adopt(phanson, darwin)
# shelter.adopt(bholmes, kennedy)
# shelter.adopt(bholmes, sweetie)
# shelter.adopt(bholmes, molly)
# shelter.adopt(bholmes, chester)
# shelter.print_adoptions
# puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
# puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

=begin
Further Exploration
Add your own name and pets to this project.
Suppose the shelter has a number of not-yet-adopted pets, and wants to manage
them through this same system. Thus, you should be able to add the following
output to the example output shown above:

The Animal Shelter has the following unadopted pets:
a dog named Asta
a dog named Laddie
a cat named Fluffy
a cat named Kat
a cat named Ben
a parakeet named Chatterbox
a parakeet named Bluebell
   ...

P Hanson has 3 adopted pets.
B Holmes has 4 adopted pets.
The Animal shelter has 7 unadopted pets.

Can you make these updates to your solution?
Did you need to change your class system at all?
Were you able to make all of your changes without modifying the existing
interface?

There is a need to move the pet from `the_animal_shelter` owner to the new
owner if the pet is adopted from the shelter. I solved this by creating
a new instance variable within the shelter object to track unadoped pets as
an array. 
Another approach may have been to create the animal shelter as it's own owner
instance and when adopting from a shelter pass that in as another parameter
to the shelter instance adopt method. This way could make sense if every 
adoption comes from a shelter, and takes into account there may be multiple
shelters.

Problem:
- add pets to shelter at initialization
  - add a feature to add pets to shelter
- when adopt method is called delete pet from shelter unadopted pet list
- add function to print_adoptions to print unadopted

=end

class Pet
  attr_reader :type, :name

  def initialize(type, name)
    @type = type
    @name = name
  end

  def to_s
    "a #{type} named #{name}"
  end
end

class Owner
  attr_reader :name, :pets

  def initialize(name)
    @name = name
    @number_of_pets = 0
    @pets = []
  end

  def number_of_pets
    @pets.size
  end

  def add_pet(pet)
    @pets << pet
  end
end

class Shelter
  attr_reader :unadopted_pets

  def initialize(*unadopted_pets)
    @owners = {}
    @unadopted_pets = unadopted_pets
  end

  def adopt(owner, pet)
    owner.add_pet(pet)
    @owners[owner.name] ||= owner
    @unadopted_pets.delete(pet)
  end

  def add_unadopted_pet(pet)
    @unadopted_pets << pet
  end

  def print_adoptions
    @owners.each do |owner_name, owner|
      puts "#{owner_name} has adopted the folling pets:"
      puts owner.pets
      puts
    end
  end

  def print_unadopted
    puts @unadopted_pets
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new(butterscotch, pudding, darwin, kennedy, molly, chester)
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)

asta = Pet.new('dog', 'Asta')
laddie = Pet.new('dog', 'Laddie')
fluffy = Pet.new('cat', 'Fluffy')
kat = Pet.new('cat', 'Kat')
ben = Pet.new('cat', 'Ben')
chatterbox = Pet.new('parakeet', 'Chatterbox')
bluebell = Pet.new('parakeet', 'Bluebell')

shelter.add_unadopted_pet(asta)
shelter.add_unadopted_pet(laddie)
shelter.add_unadopted_pet(fluffy)
shelter.add_unadopted_pet(kat)
shelter.add_unadopted_pet(ben)
shelter.add_unadopted_pet(chatterbox)
shelter.add_unadopted_pet(bluebell)

shelter.print_adoptions
shelter.print_unadopted

puts
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "The Animal shelter has #{shelter.unadopted_pets.size} unadopted pets."

asta = Pet.new('dog', 'Asta')
laddie = Pet.new('dog', 'Laddie')
fluffy = Pet.new('cat', 'Fluffy')
kat = Pet.new('cat', 'Kat')
ben = Pet.new('cat', 'Ben')
chatterbox = Pet.new('parakeet', 'Chatterbox')
bluebell = Pet.new('parakeet', 'Bluebell')

shelter.add_unadopted_pet(asta)
shelter.add_unadopted_pet(laddie)
shelter.add_unadopted_pet(fluffy)
shelter.add_unadopted_pet(kat)
shelter.add_unadopted_pet(ben)
shelter.add_unadopted_pet(chatterbox)
shelter.add_unadopted_pet(bluebell)
