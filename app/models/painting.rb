class Painting
  @@all = []

  def self.all
    @@all
  end

  def self.total_price
    total = self.all.map {|object| object.price}.reduce(:+)
    total / self.all.length.to_f
  end

  attr_reader :title, :price, :artist, :gallery

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all <<  self
  end

end
