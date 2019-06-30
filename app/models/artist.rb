class Artist
  @@all = []

  def self.all
    @@all
  end

  def self.total_experience
    self.all.map {|object| object.years_experience}.reduce(:+)
  end

  def self.most_prolific
    self.all.max_by {|object| object.paintings.size/object.years_experience}
  end

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select {|object| object.artist == self}
  end

  def galleries
    paintings.map {|object| object.gallery}
  end

  def cities
    galleries.map {|attr| attr.city}
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
