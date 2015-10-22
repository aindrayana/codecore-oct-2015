# Build a class called FizzBuzz that takes two numbers as parameters
# and then have a method called run that returns a fizzbuzz array
# (numbers from 1 to 100, numbers divisible by the first number
# replaced by 'fizz' and numbers replaced by the second number replaced
# by 'buzz' and numbers divisible by both replaced by 'fizzbuzz').
#
# For instance this code should work with your class:
# fb = FizzBuzz.new(3,5)
# fb.run # returns an array like: [1, 2, 'fizz', 4, 'buzz, ...
#
# Now modify your solution to make it flexible and be able to change
# the numbers after you create the object. For instance:
# fb = FizzBuzz.new(3,5)
# fb.run # returns an array: [1, 2, 'fizz', 4, 'buzz, ...
# fb.first_number = 2
# fb.second_number = 3
# fb.run # returns an array: [1, 'fizz', 'buzz', 'fizz', 5, 'fizzbuzz'...
class FizzBuzz
  attr_accessor :firstnumber
  attr_accessor :secondnumber

  def initialize(firstnumber,secondnumber)
    @firstnumber, @secondnumber = firstnumber, secondnumber
  end

  def fizzbuzz
    arr = []
    (1..100).each do |num|
      if (num % @firstnumber == 0) && (num % @secondnumber == 0) then arr << "FIZZBUZZ"
      elsif (num % @firstnumber == 0) then arr << "FIZZ"
      elsif (num % @secondnumber == 0) then arr << "BUZZ"
      else
          arr << num
      end
    end
    arr.inspect
  end

  def run
    puts fizzbuzz
  end
end

c = FizzBuzz.new(3,5)
c.run
c.first_number = 2
c.second_number = 3
c.run
