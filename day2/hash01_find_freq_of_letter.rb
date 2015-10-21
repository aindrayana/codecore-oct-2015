#Assignment: Find frequency of letters
#Write a code that will prompts a user to enter a sentence and then prints out a hash whose keys are the letter and values are the number of occurrences of that letter, for example if use enters "hello world" will generate:

print "Give sentence:"
sentence = gets.chomp

word = sentence.downcase.split()
letter = word.join().chars
letter_count = Hash.new(0)
letter.each do |str|
    letter_count[str] += 1
end
letter_count.max_by {|letter, freq| freq}
