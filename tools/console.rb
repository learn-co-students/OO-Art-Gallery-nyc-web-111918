require_relative '../config/environment.rb'

#test code!!!

a1 = Artist.new("Vincent van Gogh", 80)
a2 = Artist.new("Leonardo da Vinci", 5)
a3 = Artist.new("Matt D", 1)

g1 = Gallery.new("Amazing Art", "NYC")
g2 = Gallery.new("Ammmmmazzzing Art", "NYC")
g3 = Gallery.new("My house", "Astoria")

a3.create_painting("first Bad painting", 10, g2)

p1 = Painting.new("Monia Lisa", 1000, a2, g1)
p2 = Painting.new("Stary Night", 500, a1, g1)
p3 = Painting.new("Some Art", 500, a1, g2)




binding.pry

puts "Bob Ross rules."
