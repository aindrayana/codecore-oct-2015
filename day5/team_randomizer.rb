p = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l"]
# p = ["a", "b", "c", "d", "e", "f", "g"]
def team(p, num)
    z = []
    num.times {z << []}
    i = 0
    while i < p.count
        z[ i%num ] << p[i]
        i+=1
    end
    puts z.inspect
end

team(p,5)
