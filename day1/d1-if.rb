print "Give me a number: "
num = gets.chomp.to_i

if num > 10
  puts "The number is large"
elsif
  num > 5
  puts "The number is medium"
else
  puts "The number is small"
end
