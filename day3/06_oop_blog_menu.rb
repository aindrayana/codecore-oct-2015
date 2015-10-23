require "./06_oop_blog_post.rb"

class Menu
  def initialize
    @blog = Blog.new
    @comment = Comments.new("")
    system "clear"
  end
  def options
    puts "Blog Menu"
    puts "---------"
    puts "1. Display Blog Post"
    puts "2. Add Comment"
    puts "3. Delete Comment"
    puts "4. Exit"
    print "Enter your options: "
    menu = gets.chomp

    case menu
    when "1"
      system "clear"
      @blog.display
      hitanykey
    when "2"
      userinput = @comment.input
      @blog.add_comments(userinput)
      system "clear"
      @blog.display
      hitanykey
    when "3"
      system "clear"
      @blog.display
      @blog.delete_comments
      system "clear"
      @blog.display
      hitanykey
    when "4"
      system "clear"
      puts "Good Bye!"
    end
  end
  def hitanykey
    print "Hit any key to continue .."
    input = gets.chomp
    system "clear"
    options
  end

end

menu = Menu.new
menu.options

# blog = Blog.new
# #userinput = comment.input
# comment = Comments.new("I love you")
# blog.add_comments(comment)
# comment = Comments.new("Good bye")
# blog.add_comments(comment)
# comment = Comments.new("Excellent")
# blog.add_comments(comment)
# comment = Comments.new("Good luck")
# blog.add_comments(comment)
# blog.display
# blog.delete_comments
