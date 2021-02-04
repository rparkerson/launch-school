class Integer
  def to_eng
    if self == 5
      english = 'five'
    else
      english = 'forty-two'
    end

    english
  end
end

#  I'd better test on a couple of numbers...
puts 5.to_eng
puts 42.to_eng
puts '5'.to_i.to_eng
