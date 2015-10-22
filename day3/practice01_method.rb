# write method that will sum 2 param input
def sum(a,b)
  a + b
end

# write method called by_five? that takes single number param
# and returns true if evenly divisible by 5 and false if not
# do not use return
def by_five?(num)
  num % 5 == 0      # this expression will return true or false
end

# write method takes variable number of numbers and return largest number
def largenum(*num)
  # solution 1
  num.max
  # solution 2
  num.sort[-1]
  # solution 3
  large = 0
  num.each {|x| large = x if large < x }
  large
end
puts largenum(2,6,9,12,53,123,44,13,40)
