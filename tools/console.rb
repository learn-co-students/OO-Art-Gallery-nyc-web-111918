require_relative '../config/environment.rb'

a1 = Artist.new("Rachel", 2)
a2 = Artist.new("Eric", 3)
a3 = Artist.new("Tracy", 4)
a4 = Artist.new("Patrick", 5)

g1 = Gallery.new("MOMA", "New York")
g2 = Gallery.new("Guggenheim", "SOHO")
g3 = Gallery.new("The Met", "Upper East Side")

p1 = Painting.new("Beauty, Grace", 1000, a1, g1)
p2 = Painting.new("Satan", 200, a1, g2)
p3 = Painting.new("Flowers", 500, a2, g1)
p4 = Painting.new("A Nice Landscape", 450, a2, g3)
p5 = Painting.new("Potato", 12000, a3, g3)
p6 = Painting.new("An Ocean", 32500, a4, g1)
p7 = Painting.new("Watermelon", 1200, a4, g1)
p8 = Painting.new("Oompa Loompa", 16400, a4, g2)
p9 = Painting.new("Ugly and Proud", 5009, a4, g1)


binding.pry

puts "Bob Ross rules."
