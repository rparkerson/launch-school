# How do you return the word "example" from the following array?

arr = [["test", "hello", "world"], ["example", "mem"]]

p arr.last.first

p arr.flatten[3]

answer = arr.flatten.select { |element| element == "example" }
p answer.pop

arr[1][0]

arr.fetch(1).fetch(0)

arr.pop.shift   # mutates arr
