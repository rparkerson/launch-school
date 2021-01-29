# class 'Student' attributes name and grade grade getter NOT public
# example joe.grade will raise an error.
# Create better_grade_than? method
# example: puts "Well done!" if joe.better_grade_than?(bob)

class Student
  attr_writer :name, :grade
  
  def initialize(name, grade)
    self.name  = name
    self.grade = grade
  end
  
  def better_grade_than?(name)
    grade > name.grade
  end

  protected

  attr_reader :name, :grade
end

bob = Student.new("Bob", 95)
p bob
joe = Student.new("Joe", 100)
p joe
puts "Well done!" if joe.better_grade_than?(bob)
