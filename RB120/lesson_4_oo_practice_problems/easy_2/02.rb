=begin
Question 2

We have an Oracle class and a RoadTrip class that inherits from the Oracle
class.

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

What is the result of the following:

trip = RoadTrip.new
trip.predict_the_future

This will return a string combined with an array element string from the
choices method contained within the RoadTrip class. This occurs because the
calling class uses it's method lookup path to determine which choices
method will be used in the `predict_the_future` method.  The method lookup
path is relative to the object class not the class which contains the helper
method predict_the_future.
=end

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

trip = RoadTrip.new
p trip.predict_the_future
