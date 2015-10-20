print "give me a sentences: "
sentence = gets.chomp

# solution 1 #
# sentence_array = sentence.split(" ")
# word_array = sentence_array.join("")
# letter_array = word_array.split("")
#
# letter_hash = Hash.new(0)
#
# letter_array.each do |letter|
#   letter_hash[letter] += 1
# end
# print letter_hash.max_by{|letter, frequency| frequency}

#solution 2 #
# sentence.gsub(" ","").downcase!
# sentence_array = sentence.split("")
# char_hash = {}
# sentence_array.each do |character|
#   if char_hash.has_key? (character)
#     value = char_hash[character]
#     char_hash[character] = value + 1
#   else
#     char_hash[character] = 1
# end
# puts char_hash.max_by {|letter, frequency| frequency}

#solution 3#
sentence.gsub(" ","").downcase!
sentence_array = sentence.split("")
char_hash = Hash.new(0)
sentence_array.each do |character|
    char_hash[character] += 1
end
puts char_hash.max_by {|letter, frequency| frequency}
