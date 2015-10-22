require "./practice02_class.rb"
# we're creating an oreo class that inherits from cookie class
# this meads the oreo class gets all the methods from
# parent cookie class so no need to re-write them

class oreo < Cookie
  attr_accessor :filling_type

  # this redefines (or overrides) the method inherited from the Cookie class
  def initialize(sugar_amount, flour_amount, filling_type)
    @sugar_amount, @flour_amount, @filling_type =
      sugar_amount, flour_amount, filling_type
  end

  def eat
    puts "Dip in milk"
    # this will call the "eat" method in the parent class
    super
  end
end

# oreo = Oreo.new(6,7)
# oreo.bake
# oreo.eat
