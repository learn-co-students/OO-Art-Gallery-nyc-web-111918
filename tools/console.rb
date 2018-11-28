require_relative '../config/environment.rb'

g1 = Gallery.new("The Met", "New York")
g2 = Gallery.new("The Louvre", "Paris")
g3 = Gallery.new("El Prado", "Madrid")

a1 = Artist.new("Pablo Picasso", 60)
a2 = Artist.new("Vincent Van Gogh", 70)
a3 = Artist.new("Jackson Pollock", 40)
a4 = Artist.new("Claude Monet", 85)

                  #title, price, artist, gallery
p1 = Painting.new("Guernica", 25000, a1, g3)
p2 = Painting.new("The Old Guitarist", 17500, a1, g2)
p3 = Painting.new("The Starry Night", 30000, a2, g2)
p4 = Painting.new("The Yellow House", 10000, a2, g1)
p5 = Painting.new("Autumn Rhythm", 15000, a3, g1)
p6 = Painting.new("Blue Poles", 9000, a3, g3)



binding.pry

puts "Bob Ross rules."
