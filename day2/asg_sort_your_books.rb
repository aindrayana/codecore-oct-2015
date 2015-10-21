# Write some code that keeps asking use for book names
# until the user enters "exit". After typing exit the program should
# display all the entered book names sorted.

books = []
bookname = ""
while bookname != "exit"
    print "Enter Book names: (type exit when done)"
    bookname = gets.chomp
    books << bookname if bookname != "exit"
end
books.sort!
puts books
