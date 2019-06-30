require_relative '../config/environment.rb'

a1 = Artist.new("picasso", 40)
a2 = Artist.new("raphael", 100)
g1 = Gallery.new("artplace", "NY")
g2 = Gallery.new("artplace2", "LA")
a1.create_painting("cube", 999, g1)
a1.create_painting("cubed", 999, g1)
a1.create_painting("cubez", 999, g1)
a2.create_painting("notcube", 6666, g1)
a2.create_painting("notcube2", 333, g2)


binding.pry

puts "Bob Ross rules."
