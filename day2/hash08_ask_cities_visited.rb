# Ask the user for the following information: first name,
# last name and age then ask them for cities they've visited
# (they can keep entering until they type "done").
# Store all the entered data in a hash and then loop
# through the hash and display results

print "First Name: "
firstname = gets.chomp.downcase.capitalize
print "Last Name: "
lastname = gets.chomp.downcase.capitalize
print "Age: "
age = gets.chomp

contacts = {"First Name": firstname,
    "Last Name": lastname,
    "Age": age,
    "City Visited": []
}

cityvisit = ""
n = 1
puts "City Visited: (type 'done' when finish)"
while cityvisit != "done"
    print "#{n}. "
    cityvisit = gets.chomp
    contacts[:"City Visited"] << cityvisit.downcase.capitalize if cityvisit != "done"
    n += 1
end

puts contacts
