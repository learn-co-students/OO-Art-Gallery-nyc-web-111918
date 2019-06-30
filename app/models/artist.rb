class Artist

  attr_reader :name, :years_experience

  @@all = []

  def self.all
    @@all
  end

  def self.total_experience
    self.all.map { |artist| artist.years_experience }.reduce(:+)
  end

  def self.most_prolific
    hash = Hash.new
    self.all.each do |artist|
      hash[artist] = artist.paintings.size / artist.years_experience
    end.max_by{|k,v| v}
  end

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select{|painting| painting if painting.artist == self}
  end

  def galleries
    self.paintings.map {|painting| painting.gallery}
  end

  def cities
    self.galleries.map {|gallery| gallery.city}.uniq
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
