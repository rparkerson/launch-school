
class OrangeTree
  def initialize(name = 'orange')
    @name        = name
    @height       = 0
    @orange_count = 0
    @age   = 0
  end

  def height
    puts "The #{@name} tree is #{@height} feet tall."
    @height
  end

  def orange_counter
    if @age == 4
      @orange_count = 5
    elsif @age > 4
      @orange_count = 10
    end
  end

  def one_year_passes
    @age = @age + 1
    if @height < 30
      @height = @height + 3
    end
    orange_counter
    puts "Another year passes and the #{@name} tree is #{@height} feet tall and #{@age} years old."
    if @age == 50
      puts "The old orange tree is dead; its life has come to an end."
      exit
    end
    @age
  end

  def count_the_oranges
    if @age < 4
      puts "The #{@name} tree is #{@age} and has no fruit yet."
    elsif @age == 4
      puts "The #{@name} tree is #{@age} and has #{@orange_count} oranges."
    else
      puts "The #{@name} tree is #{@age} and has #{@orange_count} oranges."
    end
  end

  def pick_an_orange
    if @orange_count > 0
      @orange_count = @orange_count -1
      p "That was a delicious tasting orange you picked!"
    else
      p "There are no more oranges to pick this year!"
    end
  end
end

orange = OrangeTree.new
orange.height
orange.count_the_oranges
orange.pick_an_orange
orange.one_year_passes
orange.height
orange.count_the_oranges
orange.pick_an_orange
orange.one_year_passes
orange.height
orange.count_the_oranges
orange.pick_an_orange
orange.one_year_passes
orange.height
orange.count_the_oranges
orange.pick_an_orange
orange.one_year_passes
orange.height
orange.count_the_oranges
orange.pick_an_orange
orange.one_year_passes
