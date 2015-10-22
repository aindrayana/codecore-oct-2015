# Make classes that simulate cats catches the birds and eats it
# 1. use inheritance
# 2. give cats & birds name
# 3. make the changes of the cat cathcing bird 50%
# 4. simulate having cats trying to catch and eat 100 birds
require "./cat.rb"
require "./bird.rb"

cat_names  = ["Tom", "Mitnight", "Blue", "Darwin"]
bird_names = ["tweeite", "big bird", "road runner"]

100.times do
  cat  = Cat.new cat_names.sample
  bird = Bird.new bird_names.sample
  cat.catch bird
  cat.eat
  puts ">>>>>>>>>>>>>>>>>>>>>>>>>>"
end
