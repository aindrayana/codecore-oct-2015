# Reverse the words in a sentence
# Write a method that takes a string as a sentence and
# returns the sentence reversed (consider words are separated
# by one or more spaces).

print "input sentence: "
sentence = gets.chomp

reverse_word = []
sentence.split().reverse.each {|word| reverse_word << word.reverse}
puts reverse_word.join(" ")
