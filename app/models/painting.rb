class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []
  def self.all
    @@all
  end

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.total_price
    @@all.reduce(0) do |sum, element|
      sum + element.price
    end
  end
  
end
