=begin
Fix the Program - Flight Data

Consider the following class definition:

class Flight
  attr_accessor :database_handle

  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end

There is nothing technically incorrect about this class, but the
definition may lead to problems in the future. How can this class be fixed
to be resistant to future problems?

=end

class Flight
  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end

flight1 = Flight.new('434')

=begin
A Database class is calling init when this class is initialized. If you later
decide to alter implementation so that a database is not used, there are
database that will be initialized every time a Flight instance object is 
created. The attr_accessor is creating a database_handle getter and setter
method whihc is not being used, so that could be deleted.
=end
