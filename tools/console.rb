require_relative '../config/environment.rb'

a1 = Artist.new("Tony", 1)
a2 = Artist.new("Jose", 10)
a3 = Artist.new("Terry", 26)
a4 = Artist.new("Van Gogh", 20)

g1 = Gallery.new("Moma", "New York, New York")
g2 = Gallery.new("Queens Library", "Flushing, New York")
g3 = Gallery.new("My basement..", "Ridgewood, New York")

#(title, price, artist, gallery)
p1 = Painting.new("The okay wave", 260, a2, g1)
p2 = Painting.new("Much Abstract", 5600, a2, g2)
p3 = Painting.new("Stick figure 002", 5, a1, g3)
p4 = Painting.new("Stick figure 003", 5, a1, g3)
p4 = Painting.new("Starry Night", 30000000, a4, g3)
p5 = Painting.new("My second Work", 5000, a2, g2)





binding.pry

puts "Bob Ross rules."
