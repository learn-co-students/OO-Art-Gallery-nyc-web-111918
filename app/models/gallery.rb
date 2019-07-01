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

  # [x] Gallery#paintings returns an array of all paintings in a gallery
  def paintings
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  # [x] Gallery#artists returns an array of all artists that have a painting in a gallery
  def artists
    self.paintings.map do |painting|
      painting.artist
    end
  end

  # [x] Gallery#artist_names returns an array of the names of all artists that have a painting in a gallery
  def artist_names
    self.artists.map do |artist|
      artist.name
    end
  end

  # [x] Gallery#most_expensive_painting returns an instance of the most expensive painting in a gallery
  def most_expensive_painting
    most_expensive = []
    highest_price = 0
    self.paintings.map do |painting|
      if painting.price > highest_price
        highest_price = painting.price
        most_expensive = painting
      end
    end
    most_expensive
  end


end
