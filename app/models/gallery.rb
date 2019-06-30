class Gallery
  @@all = []

  def self.all
    @@all
  end

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def paintings
    Painting.all.select {|object| object.gallery == self}
  end

  def artists
    paintings.map {|object| object.artist}
  end

  def artist_names
    artists.map {|object| object.name}.uniq!
  end

  def most_expensive_painting
    paintings.max_by {|object| object.price}
  end


end
