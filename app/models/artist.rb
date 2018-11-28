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
    Painting.all.select { |paint| paint.artist == self }
  end

  def gallaries
    paintings.map { |paint| paint.gallery }
  end

  def self.total_experience
    @@all.reduce(0) {|acc, exp| acc + exp.years_experience}
  end

  def self.most_prolific
    @@all.map { |artist| [artist, artist.paintings.length/artist.experience]}.sort_by { |arr| arr[1]}[-1]
  end

  def create_painting(title, price, gallery)
    new_painting = Painting.new(title, price)
    new_painting.gallery = gallery
    new_painting.artist = self
  end

end
