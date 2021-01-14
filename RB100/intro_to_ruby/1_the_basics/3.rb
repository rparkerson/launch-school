movies = {:movie_1 => 1975, :movie_2 => 2004, :movie_3 => 2013, :movie_4 => 2001, :movie_5 => 1981}

 puts movies[:movie_1]
puts movies[:movie_2]
puts movies[:movie_3]
puts movies[:movie_4]
puts movies[:movie_5] 


movies.each { |title, year| puts year }

movies.each_value { |year| puts year}

