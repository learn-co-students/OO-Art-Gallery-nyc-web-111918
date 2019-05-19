class Artist

  @@all = []

  def self.all
    @@all
  end

  attr_reader :name, :years_experience

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
    paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience
    years_experience = 0
    self.all.each do |artist|
      years_experience += artist.years_experience
    end
    years_experience/self.all.length
  end

  def self.most_prolific
    self.all.max_by { |artist|
      artist.paintings.length / artist.years_experience.to_f
    }
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
