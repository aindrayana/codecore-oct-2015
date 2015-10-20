#Find out how to get the Sine and Cosine of a give number in Ruby

print "Give number: "
num = gets.to_f
sine = Math.sin(num)
cosine = Math.cos(num)
puts "Sine of #{num} is #{sine}"
puts "Cosine of #{num} is #{cosine}"
