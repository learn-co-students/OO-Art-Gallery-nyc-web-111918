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

  def paintings #all the paintings in the gallery.
    Painting.all.select do |painting|
      painting.gallery == self
    end
  end

  def artists #all artists that have a painting in a gallery
    self.paintings.map do |painting|
      painting.artist
    end
  end

  def artist_names
    #look through all the artists intances.
    #map the names of artist into an array.
    self.artists.map do |artist_instance|
      artist_instance.name
    end
  end

  def most_expensive_painting #returns instance of most_expensive_painting in that gallary.
    #for g1 this should be p1 The Monia Lisa.
    #look through all the paintings in the gallery.
    self.paintings.max_by do |painting|
      painting.price
    end

  end


end #end of Gallery class
