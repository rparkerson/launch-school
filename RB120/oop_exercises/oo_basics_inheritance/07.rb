=begin
Method Lookup (Part 1)

Using the following code, determine the lookup path used when invoking
cat1.color. Only list the classes that were checked by Ruby when searching
for the #color method.

class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new('Black')
cat1.color

=end

class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new('Black')
cat1.color

cat1.class.ancestors.each do |class_name|
  puts class_name if class_name.instance_methods(false).include?(:color)
end

# Cat
# Animal

Cat.ancestors.each do |class_name|
  puts class_name if class_name.method_defined?('color')
end

# Cat
# Animal

# Student solution
cat1.class.ancestors.each do |cl|
  break unless cl.method_defined? "color"
  puts cl
end

# Cat
# Animal

=begin
Use code to output the classes checked by Ruby when searching for the #color
method.

Problem
input: 3 classes
output: classes searched
rules:
- output classes each on their own line
- use the lookup path from an instance referenced by cat1

Example
cat1 = Cat.new('Black')
cat1.color
# Cat
# Animal

Data Structure
arrays, symbols

Algorithm
- iterate through the instance class's ancestors array
- output the current class name
- break if current class name contains the method (Ruby stops seraching)

=end

cat1.class.ancestors.each do |class_name|
  puts class_name
  break if class_name.instance_methods(false).include?(:color)
end

# => Cat
# => Animal

# Student example
#...rest of code omitted

color_method_class = cat1.method(:color).owner
# => Animal
# the class in which the instance method #color is invoked upon cat1 object

cat_ancestors = cat1.class.ancestors
# => [Cat, Animal, Object, Kernel, BasicObject]
# list of all ancestors of cat1 object

puts cat_ancestors[0..cat_ancestors.index(color_method_class)]
# => Cat
# => Animal
# outputs the method lookup path, up to the class where the instance method #color is invoked.
