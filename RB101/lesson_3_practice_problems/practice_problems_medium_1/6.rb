answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# => 34
# This method does not mutate the caller so answer still points to the same
# unaltered value 42
