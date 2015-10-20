arr = []
#arr = (1..100).to_a

(1..100).each do |num|
    if (num % 3 == 0) && (num % 5 == 0)
       arr << "FIZZBUZZ"
    elsif (num % 3 == 0)
       arr << "FIZZ"
    elsif (num % 5 == 0)
        arr << "BUZZ"
    else
        arr << num
    end
end
puts arr
