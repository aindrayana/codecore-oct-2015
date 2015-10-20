myhash = {"BC" => ["Vancouver", "Richmond"],
    "AB" => ["Edmonton", "Calgary"]}

myhash.each do |prov, cities|
    puts "#{prov}: #{cities.join(", ")}"
end
