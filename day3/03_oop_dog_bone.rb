# Make two classes dog and bones. The dog class must have initialize
# method that takes dog's color and type. The bone must have an
# initialize method that assigns a size for the bone.
# The dog class must have a give method that takes a bone object and
# add it it to an array of bones for the dog. The dog can take a
# maximum of three bones so if you give it more than three it will
# will print, I have too many bones.
# --
# The dog class must have a eat bone that when you call it
# it removes a bone from the array of bones and print "yummy! I ate
# 'big' bone" the 'big' part comes from the size attribute of bone.


class Dog
  attr_accessor :bones
  def initialize(color, type)
      @color, @type = color, type
      @bones = []
  end

  def give(bones)
    @bones << bones
    # puts @bones.inspect
    if @bones.size > 3
        puts "I have too many bones"
    else
        puts "I have #{@bones.size} bones"
    end
  end

  def eatbone
    @bones.each {|bone| puts "I eat #{bone.bonesize} bones" }
  end

end

class Bones
    def initialize(bonesize)
      @bonesize = bonesize
    end
    attr_reader :bonesize
end

d = Dog.new("black","gr")
b = Bones.new("small")
b1 = Bones.new("med")
b2 = Bones.new("large")
b3 = Bones.new("small")
d.give(b)
d.eatbone
d.give(b1)
d.eatbone
d.give(b2)
d.eatbone

#d.give(b3)
# d.eatbone
# d.eatbone
