print "How many loops: "
loop = gets.to_i

# while loop < 0
#   puts "#{x}. Hello World"
#   x -= 1
# end

# --
loop.times do |x|
    x += 1
    puts "#{x}. Hello World"
end
