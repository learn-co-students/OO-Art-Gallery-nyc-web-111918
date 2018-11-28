class Gallery

  attr_reader :name, :city

  @@all = []
  def self.all
    @@all
  end

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def paintings
    Painting.all.select { |paint| paint.gallery == self}
  end

  def artists
    paintings.map { |paint| paint.artist}
  end

  def artist_names
    artists.map { |artist| artist.name}
  end

  def most_expensive_painting
    paintings.sort_by? { |painting| painting.price }[-1]
  end

end
