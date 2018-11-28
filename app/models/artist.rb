class Artist
  attr_reader :name, :years_experience
  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}.uniq
  end

  def cities
    galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
    all.map {|artist| artist.years_experience}.reduce(:+)
  end

  def self.artist_to_number_of_painting_hash
    hsh = Hash.new()
    all.each { |artist| hsh[artist] = artist.paintings.count }
    hsh
  end

  #refractor-each should be their own method
    #have a method that sets a hash of artist and prolific
      #number of yearsofexp/painting
    #sort that hash by value
    #pull out the last value of the hash, and return the "key" which should be the artist.

  def self.most_prolific
    most_prolific = nil
    proficiency = 0
    artist_to_number_of_painting_hash.each do |artist, count|
      most_prolific = artist if most_prolific.nil?
      next if count == 0
      if (artist.years_experience/count).to_f < proficiency
        most_prolific = artist
        proficiency = (artist.years_experience/count).to_f
      end
    end
    most_prolific
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
