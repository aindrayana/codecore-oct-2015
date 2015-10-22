# Model a blog post and comments
# Model a blog post and comments with classes and make it
# so a blog have many comments.
# Add the ability for me to add and remove comments from a blog.

class Blog
  def initialize
    @comments = []
  end
  def display
    @comments.each {|comment| puts "#{comment}"}
    puts "-------------------"
  end
  def add_comments(comment)
    @comments << comment.text
    display
#    puts @comments
#    puts "Comments added"
  end

  def delete_comments
    puts "Comments deleted"
  end
end

class Comments
  attr_reader :text
  def initialize(text)
    @text = text
  end

#   def input
#     print "input your comment: "
#     @text = gets.chomp
#   end
end


blog = Blog.new
#userinput = comment.input
comment = Comments.new("I love you")
blog.add_comments(comment)
comment = Comments.new("Good bye")
blog.add_comments(comment)
comment = Comments.new("Excellent")
blog.add_comments(comment)
comment = Comments.new("Best of luck")
blog.add_comments(comment)
#blog.displayblog
