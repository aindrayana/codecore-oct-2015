my_array = [1,2,3,4,5,6,7,8,9,10]
print my_array.map {|number| number * 2}
#each will not change/ modify the existing/ original element
#each will return back the original array
puts "--------------------------"
print my_array.each {|number| number * 2}
