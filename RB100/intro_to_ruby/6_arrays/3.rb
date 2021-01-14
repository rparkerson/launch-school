# How do you return the word "example" from the following array?

arr = [["test", "hello", "world"], ["example", "mem"]]

p arr.last.first

p arr.flatten[3]

answer = arr.flatten.select { |element| element == "example" }
p answer.pop

