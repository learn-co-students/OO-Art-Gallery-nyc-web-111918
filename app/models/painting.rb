class Painting

  attr_reader :title, :price
  attr_accessor :gallery, :artist

  @@all = []
  def self.all
    @@all
  end

  def initialize(title, price)
    @title = title
    @price = price
    @gallery = nil
    @artist = nil

    @@all << self
  end

  def self.total_price
    @@all.reduce(0) {|acc, price| acc + price.price}/(@@all.count.to_f)
  end


end
