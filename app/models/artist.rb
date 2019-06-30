class Artist

  attr_reader :name, :years_experience

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    self.paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    self.galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience
    sum = 0
    self.all.each do |artist|
      sum += artist.years_experience
    end
    sum
  end

  def self.most_prolific
    self.all.sort_by {|artist| artist.years_experience}.reverse[0]
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end #end of Artist class
