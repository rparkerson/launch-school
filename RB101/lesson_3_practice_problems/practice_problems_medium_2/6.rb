#  How could the unnecessary duplication in this method be removed?

def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end

def color_valid(color)
  case color
  when "blue", "green" then true
  else false
  end
end

p color_valid("blue")
p color_valid("b")
p color_valid("red")
p color_valid("green")

def color_valid(color)
  color == "blue" || color == "green"
end

p color_valid("blue")
p color_valid("b")
p color_valid("red")
p color_valid("green")
