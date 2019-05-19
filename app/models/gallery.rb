class Gallery
  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artist
    paintings.map {|painting| painting.artist}.uniq
  end

  def artist_names
    artist.map {|artist| artist.name}
  end

  def most_expensive_painting
    paintings_sort_by_price.last
  end

  def paintings_sort_by_price
    paintings.sort_by {|painting| painting.price}
  end

end
