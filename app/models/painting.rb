class Painting
  attr_reader :title, :price, :gallery, :artist

  @@all = []

  def self.all
    @@all
  end

  def self.total_price
    self.all.map{ |painting| painting.price  }.reduce(:+) / @@all.size
  end

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    @@all << self
  end
end
