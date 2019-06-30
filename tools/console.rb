require_relative '../config/environment.rb'

a1 = Artist.new("Damon", 3)
a2 = Artist.new("Sarah", 5)
a3 = Artist.new("Picasso", 30)

g1 = Gallery.new("MOMA", "NYC")
g2 = Gallery.new("Museum", "NYC")
g3 = Gallery.new("White House", "Washington D.C.")

p1 = Painting.new("Painting1", 1000, a1, g3)
p2 = Painting.new("Painting2", 10000, a1, g2)
p3 = Painting.new("Painting3", 2000, a1, g3)
p3 = Painting.new("Painting4", 5000, a2, g1)
p4 = Painting.new("Painting5", 100, a3, g1)
p5 = Painting.new("Painting6", 1000, a3, g1)

binding.pry

puts "Bob Ross rules."
