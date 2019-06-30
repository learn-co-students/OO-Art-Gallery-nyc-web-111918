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
    sum = 0
    self.all.each do |painting|
      sum += painting.price
    end
    sum/self.all.length
  end


end
