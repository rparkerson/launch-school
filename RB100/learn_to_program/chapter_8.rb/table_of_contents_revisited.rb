# first exercise
width = 50
puts("Table of Contents".center(width))
puts
puts("Chapter 1:  Getting Started              page  1".ljust(width)) 
puts("Chapter 2:  Numbers                      page  9".ljust(width)) 
puts("Chapter 3:  Letters                      page 13".ljust(width)) 



# reworked
width = 50
title = "Table of Contents".center(width)
chp1 = "Chapter 1:  Getting Started              page  1".ljust(width)
chp2 = "Chapter 2:  Numbers                      page  9".ljust(width)
chp3 = "Chapter 3:  Letters                      page 13".ljust(width)
  
puts title
puts nil
puts chp1
puts chp2
puts chp3

# reworked 2
width = 27
title = 'Table of Contents'.center(width * 2)
chp1 = 'Chapter 1:  Getting Started'.ljust(width)
chp2 = 'Chapter 2:  Numbers'.ljust(width)
chp3 = 'Chapter 3:  Letters'.ljust(width)
pg1  = 'page  1'.rjust(width)
pg9  = 'page  9'.rjust(width)
pg13 = 'page 13'.rjust(width)

table = [title, nil, (chp1 + pg1), (chp2 + pg9), (chp3 + pg13)]
puts table
