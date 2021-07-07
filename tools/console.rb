require_relative '../config/environment.rb'


thao = Artist.new("Thao", 3)
picasso = Artist.new("Picasso", 2)
michelangelo = Artist.new("Michelangelo", 1)

g1 = Gallery.new("The Met", "NY")
g2 = Gallery.new("Moma", "SF")
g3 = Gallery.new("Home", "NY")

p1 = Painting.new("Starry Night", 1000, picasso, g1)
p2 = Painting.new("Child", 2, thao, g3)
p3 = Painting.new("Some Painting", 6000, michelangelo, g2)
p4 = Painting.new("Another Painting", 8000, michelangelo, g1)
p5 = Painting.new("And Another One", 5000, thao, g3)

binding.pry

puts "Bob Ross rules."
