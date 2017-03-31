# let's create a new array called numbers...
numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

# Use each to iterate, and pass a block
# We'll cover blocks more later
sum = 0
numbers.each { |number| sum += number }
sum # => 45


# Use map to make a new array out of the elements returned by the block
# here we multiply the number by itself
squares = numbers.map { |number| number * number }
squares # => [0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
#compare to our original
numbers # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]


# iterate over the array two at a time
result = []
numbers.each_slice(2) { |a, b| result << [a, b] }
result # => [[0, 1], [2, 3], [4, 5], [6, 7], [8, 9]]


# iterate over the array in groups of two
# hitting each group as we go
result = []
numbers.each_cons(2) { |a, b| result << [a, b] }
result # => [[0, 1], [1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 7], [7, 8], [8, 9]]


