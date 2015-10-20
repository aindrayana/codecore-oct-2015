print "input your words: "
#"hello codecore student"
arr = gets.chomp.split
#arr = word.split
arr.each {|str| str.capitalize!}
puts arr.join(" ")

# or if we put it in single line
# puts gets.chomp.split.map {|word| word.capitalize}.join(" ")
