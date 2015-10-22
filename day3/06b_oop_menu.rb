class Menu
  def options
    puts "Blog Menu"
    puts "---------"
    puts "1. Display Blog Post"
    puts "2. Add Comment"
    puts "3. Delete Comment"
    print "Enter your options: "
    menu = gets.chomp

    case menu
    when "1"
      puts "Display blog!"
    when "2"
      puts "Add COmment!"
    when "3"
      puts "Delete Comment!"
    end
  end
end

menu = Menu.new
menu.options
