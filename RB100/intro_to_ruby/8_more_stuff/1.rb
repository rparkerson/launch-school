def check_lab(word)
  if word =~ /lab/
    puts word
  else
    puts "This does not contain \"lab\""
  end
end

check_lab("laboratory")
check_lab("experiment")
check_lab("Pans Labyrinth")
check_lab("elaborate")
check_lab("polar bear")

def check_lab2(word)
  if /lab/.match(word)
    puts word
  else
    puts 'This does not contain "lab"'
  end
end

check_lab2("laboratory")
check_lab2("experiment")
check_lab2("Pans Labyrinth")
check_lab2("elaborate")
check_lab2("polar bear")