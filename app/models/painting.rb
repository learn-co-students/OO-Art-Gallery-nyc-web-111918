class Painting
  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    sum = 0
    self.all.map {|painting| painting.price}.each {|price| sum += price}
    sum

  end

end
