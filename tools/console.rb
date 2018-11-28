require_relative '../config/environment.rb'

a1 = Artist.new("John", 20)
a2 = Artist.new("Mike", 10)
a3 = Artist.new("Haward", 15)
a4 = Artist.new("Chris", 6)


g1 = Gallery.new("NY", "NYC")
g2 = Gallery.new("NY", "NYC")
g3 = Gallery.new("NY", "NYC")

p1 = Painting.new("cold", 500)
p2 = Painting.new("the fall", 10000)

binding.pry

puts "Bob Ross rules."
