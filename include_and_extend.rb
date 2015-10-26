module HandyMethods
  def cap_an_reverse(string)
    string.capitalize.reverse
  end
end

class ClassOne
  include HandyMethods
end

class ClassTwo
  extend HandyMethods
end

pust ClassOne.new.cap_an_reverse("hello")
pust ClassTwo.cap_an_reverse("hello")
