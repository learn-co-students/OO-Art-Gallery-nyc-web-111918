class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def self.all
    @@all
  end

  def self.total_price
    total_price = self.all.reduce(0) {|acc, el| acc += el.price }
    total_price.to_f / self.all.size
  end

  # total = 0
  # array.each do |ele|
  #   total += ele
  # end

  # arr.reduce(0) { |acc, ele| acc += ele }
  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery


    @@all << self
  end

end
