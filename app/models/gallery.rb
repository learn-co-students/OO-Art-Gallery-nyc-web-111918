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
    Painting.all.select do |painting_inst|
      # binding.pry
      painting_inst.gallery == self
    end
  end

  def artists
    paintings.map do |painting_inst|
      painting_inst.artist
    end
  end

  def artist_names
    artists.map do |artist_inst|
      artist_inst.name
    end
  end

  def most_expensive_painting
    hash = {}
    paintings.each do |painting_inst|
      hash[painting_inst] = painting_inst.price
      # binding.pry
    end
    # binding.pry
    hash.sort_by{|k,v| v }[-1][0]
  end

end # end of class
