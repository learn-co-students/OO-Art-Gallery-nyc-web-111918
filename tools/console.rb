require_relative '../config/environment.rb'


a1 = Artist.new("artist 1", 80)
a2 = Artist.new("artist 2", 10)
a3 = Artist.new("artist 3", 50)

g1 = Gallery.new("art gal 1", "NY")
g2 = Gallery.new("art gal 2", "NY")
g3 = Gallery.new("art gal 3", "LA")


p1 = Painting.new("paint 1", 1000, a2, g1)
p2 = Painting.new("paint 2", 500, a1, g2)
p3 = Painting.new("paint 3", 1010, a2, g3)



binding.pry


puts "Bob Ross rules."
