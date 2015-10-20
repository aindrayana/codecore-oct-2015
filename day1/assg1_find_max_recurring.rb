#Find a way that will return the letter that occurred most in a given string. For instance if you give it: Hello it will give back the letter: l

word = "Hello"
count_by_char = {}
word.chars.each do |char|
    count_by_char[char] = 0 unless count_by_char[char]
    count_by_char[char] += 1
end
#puts count_by_char

highest_count_so_far = 0
corresponding_letter = ""
count_by_char.each do |str, val|

    if(val > highest_count_so_far)
        #puts str
        highest_count_so_far = val
        corresponding_letter = str
    end
end
puts corresponding_letter
