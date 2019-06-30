class Gallery

  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting if painting.gallery == self}
  end

  def artists
    self.paintings.map {|painting| painting.artist}.uniq!
  end

  def artist_names
    #returns an array of the names of all artists
    #that have a painting in this gallery
    self.artists.map {|artist| artist.name}.uniq!
    #account for duplicates

  end

  def most_expensive_painting
    #returns instance of most expensive painting in this gallery
    #look through paintings in this gallery
    #find the one with the highest price
    #highest_price = 0
    #expensive_painting = nil

    self.paintings.sort_by{|painting| painting.price}.last
    
    #price_array = self.paintings.map {|painting| painting.price}
    #price_array.each do |price|
      #if price > highest_price
        #price = highest_price
        #expensive_painting = painting
      #end
    #end
    #expensive_painting
  end

end
