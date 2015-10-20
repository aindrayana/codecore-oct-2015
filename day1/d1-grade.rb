print "What is your grade: "
# we can do without the .chomp in here because we're converting the input
# to an integer which will ignore the new line character
grade = gets.to_i

A_GRADE_MINIMUM = 80
B_GRADE_MINIMUM = 70
C_GRADE_MINIMUM = 60
D_GRADE_MINIMUM = 50

if grade > A_GRADE_MINIMUM
  puts "Your grade is A"
elsif grade > B_GRADE_MINIMUM
  puts "Your grade is B"
elsif grade > C_GRADE_MINIMUM
  puts "Your grade is C"
elsif grade > D_GRADE_MINIMUM
  puts "Your grade is D"
else
  puts "Your grade is F"
end

# command + shift + d => duplicates a line
# hold(command + control) the use up / down arrows => moves a line
# command + right arrow => go to end of the line
# command + left arrow => go to beginning of the line
