#Write a code that takes user's input and then prints out "Yes it has C"
#if entered input contains the letter "C" (upper or lower case).
#And it prints "There is no C" if it doesn't.

print "Gives a sentence: "
word = gets.downcase
contain_c = word.include? "c"
puts "Yes it has C" if contain_c
puts "There is no C" if contain_c == false
