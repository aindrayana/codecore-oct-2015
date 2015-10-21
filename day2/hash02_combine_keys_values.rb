# Combine keys and values
# Given a hash:
# {:a => "123", :b => "345", :c => "678", :d => "910"}
# Write a code that generates an array that combines the keys
# and values, the resulting array should be:
# ["a123", "b345", "c678", "d910"]
arr = []
myhash = {:a => "123", :b => "345", :c => "678", :d => "910"}
myhash.each do |key, val|
   arr << "#{key}#{val}"
end
puts arr
