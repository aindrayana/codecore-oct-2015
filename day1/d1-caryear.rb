print "What year is your car : "
car_year = gets.chomp.to_i
if car_year > 2014
  puts "Future Car"
elsif car_year > 2010
  puts "New Car"
elsif car_year > 2000
  puts "Old Car"
else
  puts "Very Old Car"
end
