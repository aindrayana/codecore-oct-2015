# Hash of Information
# Ask the user for personal information: first name, last name,
# city of birth and age. Then store that information in a hash.
# After that loop through the hash and display the results,
# for example:
# Your first name is Tam.
# Capitalize the inputs from the user if they are capitalizable

print "First Name: "
firstname = gets.chomp.downcase.capitalize
print "Last Name: "
lastname = gets.chomp.downcase.capitalize
print "City of Birth: "
cityofbirth = gets.chomp.downcase.capitalize
print "Age: "
age = gets.chomp

contacts = {"First Name": firstname,
    "Last Name": lastname,
    "City of Birth": cityofbirth,
    "Age": age
}

contacts.each do |key, value|
   puts "Your #{key} is #{value}"
end
