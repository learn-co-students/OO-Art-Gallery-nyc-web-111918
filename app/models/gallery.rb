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
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists
    paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names
    artists.map do |artist|
      artist.name
    end
  end

  def most_expensive_painting
    paintings.sort_by { |painting|
      painting.price
    }.last
  end

end
