class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def self.all
    @@all
  end

  # [x] Painting.total_price returns an integer that is the average price of all paintings
  def self.price
    @@all.map do |painting|
      painting.price
    end
  end

  def self.total_price
    self.price.inject(0) {|sum, price| sum + price}
  end

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    @@all << self
  end

end
