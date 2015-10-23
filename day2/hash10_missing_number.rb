# Find missing number
# You are given an array with numbers between 1 and 1,000,000.
# One integer is in the array twice. How can you determine which one?
# Can you think of a way to do it using little extra memory.
# Bonus: Solve it in two ways: one using hashes and one without.
arr = []
(1..100).each {|num| arr << num}
arr << 77
puts arr.sort.inspect
