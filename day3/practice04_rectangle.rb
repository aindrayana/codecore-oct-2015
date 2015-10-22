class Rectangle
  attr_accessor :width, height

  def initialize(width, height)
    @width, @height = width, height
  end

  def area
    width * height
    # we do not have to wite @width * @height
    # we have declare width and height
  end

end

# c = Rectangle.new(4,5)
# c.width = 20
# c.height = 5
# c.area
