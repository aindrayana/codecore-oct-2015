# Fibonacci.
# Given a number N from the user. Generate an array that
# contains the first N numbers of the fibonacci sequence.
# note: In mathematics, the Fibonacci numbers or Fibonacci
# series or Fibonacci sequence are the numbers in the
# following integer sequence:
# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...

def fibonacci( n )
  return  n  if ( 0..1 ).include? n
  ( fibonacci( n - 1 ) + fibonacci( n - 2 ) )
end

def fibarray(num)
  fib = []
  (1..num).each {|n| fib << fibonacci(n)}
  puts fib.inspect
end

print "Give number: "
number = gets.chomp.to_i
fibarray(number)
