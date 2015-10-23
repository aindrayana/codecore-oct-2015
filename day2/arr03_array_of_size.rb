# Array of sizes
# Given an array of words. Return back an array of numbers that
# contains the length of each word in the first array in the same order.
animal = ["cat","dog","sheep","elephant","lion","hippopotamos","girrafe"]
arr = []
animal.each do |name|
  arr << name.length
end
puts animal.inspect
puts arr.inspect
