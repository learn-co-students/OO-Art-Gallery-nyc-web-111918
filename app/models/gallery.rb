class Gallery

  attr_reader :name, :city

  # * `Gallery.all`
  #   * Returns an `array` of all the galleries

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  #
  # * `Gallery#paintings`
  #   * Returns an `array` of all paintings in a gallery
  #

  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  # * `Gallery#artists`
  #   * Returns an `array` of all artists that have a painting in a gallery

  def artists
    paintings.map do |painting|
      painting.artist
    end
  end

  #
  # * `Gallery#artist_names`
  #   * Returns an `array` of the names of all artists that have a painting in a gallery

  def artist_names
    artists.map do |artist|
      artist.name
    end
  end

  #
  # * `Gallery#most_expensive_painting`
  #   * Returns an `instance` of the most expensive painting in a gallery

  def most_expensive_painting
    price = nil
    art = nil
    paintings.map do |painting|
      if price == nil || price < painting.price
        price = painting.price
        art = painting
      end
    end
    art
  end

end #end of gallery class
