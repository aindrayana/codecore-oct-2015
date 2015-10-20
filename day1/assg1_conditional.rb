#Write a code that will check if a given variables a is greater than 10
#then it will print "Hello World". If it's greater than 100 it will
#print "Hello Universe". Otherwise it will do nothing.

print "Gives number: "
num = gets.to_i
puts "Hello World" if num > 10 && num <=100
puts "Hello Universe" if num > 100


# if num > 10 && num <= 100
#     puts "Hello World"
# elsif num > 100
#     puts "Hello Universe"
# else
#     puts "Nothing"
# end
