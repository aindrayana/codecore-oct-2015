# classes are constants in Ruby
# start with capital letter
# use CamelCase

class Cookie
  # This are constants. access constants in class we use ::
  # Cookie::CALORIES_PER_SUGAR_GRAM
  CALORIES_PER_SUGAR_GRAM = 4
  CALORIES_PER_FLOUR_GRAM = 6

  # initialize method is called when you create a new object. In this case it will
  # be called when you do: Cookie.new
  def initialize(sugar_amount, flour_amount)
    @sugar_amount = sugar_amount
    @flour_amount = flour_amount
    puts "about to create an object"
  end

  #we want to access sugar amount from outside the class
  attr_reader :sugar_amount
  # this is equivalent to:
  # def sugar_amount
  #   @sugar_amount
  # end
  # c.sugar_amount
  # this is sometimes called GETTER method

  # c = Cookie.new(6,7)
  # if we want to add value to c.sugar_amount = 10
  attr_writer :sugar_amount
  # is equivalent to:
  # def sugar_amount=(new_amount)
  #   @sugar_amount = new_amount
  # end

  attr_accessor :flour_amount
  # is equivalent to:
  # attr_reader :flour_amount
  # attr_writer :flour_amount

  def calorie_count
    @sugar_amount * CALORIES_PER_SUGAR_GRAM + @flour_amount * CALORIES_PER_FLOUR_GRAM
  end

  def self.info
    puts "I'm a Cookie class"
  end

  def bake
      @a = 100
      prepare
    puts "Baking cookies"
  end

  def eat
    puts @a
    puts "Eat cookies"
  end

  # This method will not be able available from outside this class
  # both method will treats as private
  private
  def prepare
    puts "Preparing the cookies"
  end
  def flip
    puts "Flipping cookies"
  end
end
