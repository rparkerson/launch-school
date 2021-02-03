def happy_birthday(year, month, day)
  now = Time.new
  birthday = Time.new(year, month, day)
  years = (now - birthday) / (60 * 60 * 24 * 365)
  years.to_i.times { puts "SPANK!"}
end

happy_birthday(1985, 3, 14)
