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
    Painting.all.select{|painting| painting if painting.gallery == self}
  end

  def artists
    self.paintings.map {|painting| painting.artist}
  end

  def artist_names
    self.artists.map {|artist| artist.name}.uniq
  end

  def most_expensive_painting
    expensive_painting = nil
    expense = 0
    self.paintings.each do |painting|
      if painting.price > expense
        expensive_painting = painting
        expense = painting.price
      end 
    end
    expensive_painting
  end
end
