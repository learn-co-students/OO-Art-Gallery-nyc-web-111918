require_relative '../config/environment.rb'

a1 = Artist.new("VanGogh", 34)
a2 = Artist.new("Pollack", 49)
a3 = Artist.new("Wyant", 25)
a4 = Artist.new("CarMichael", 4)

g1 = Gallery.new("Louvre", "Paris")
g2 = Gallery.new("Met", "New York")
g3 = Gallery.new("Guggenheim", "New York")
g4 = Gallery.new("Bellas Artes", "Buenos Aires")

p1 = Painting.new("Starry Night", 4500000, a4, g1)
p2 = Painting.new("Girl with an ear", 2390000, a2, g1)
p3 = Painting.new("ManBearPig", 2323420, a2, g2)
p4 = Painting.new("HeyHowAreYa", 6534345, a2, g4)
p5 = Painting.new("Bubble Rabbit", 345345, a3, g3)
p6 = Painting.new("Balloon Animal", 9485, a4, g3)
p7 = Painting.new("Cat on a Roof", 203957, a1, g1)




binding.pry

puts "Bob Ross rules."
