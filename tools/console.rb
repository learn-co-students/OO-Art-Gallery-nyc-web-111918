require_relative '../config/environment.rb'

a1 = Artist.new("Leonardo da Vinci", 100)
a2 = Artist.new("Keith Haring", 50)
a3 = Artist.new("Joyce Kwon", 5)
a4 = Artist.new("Andy Warhol", 60)

g1 = Gallery.new("MET", "New York City")
g2 = Gallery.new("Louvre", "Paris")
g3 = Gallery.new("The Acropolis", "Athens")
g4 = Gallery.new("Prado", "Madrid")

p1 = Painting.new("Untitled", 150000, a1, g4)
p2 = Painting.new("Bona Lisa", 999999, a1, g3)
p3 = Painting.new("Girl with a Tiger Earring", 550000, a2, g3)
p4 = Painting.new("The Starry Knight", 6666600, a2, g2)
p5 = Painting.new("The Last Party", 4444444, a3, g2)
p6 = Painting.new("A Wednesday Afternoon", 3322222, a4, g1)


binding.pry

puts "Bob Ross rules."
