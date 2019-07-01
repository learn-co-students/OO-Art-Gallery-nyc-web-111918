require'pry'
class Artist

  attr_reader :name, :years_experience

  @@all = []

  def self.all
    @@all
  end

  # [x] Artist.total_experience returns an integer that is the total years of experience of all artists
  def self.years_experience
    @@all.map do |years|
      years.years_experience
    end
  end

  def self.total_experience
    self.years_experience.inject(0) {|sum,years| sum+years}
  end

  # [ ] Artist.most_prolific returns an instance of the artist with the highest amount of paintings per year of experience.
  def self.most_prolific
    # go through all the artists
    winner = []
    highest_prolific = 0
    @@all.each do |artist|
      # for each artist, find the number of paintings
      # divide the number of paintings by the years_experience
      prolific_score = artist.paintings.count / artist.years_experience
      # compare the result with each other
      if prolific_score > highest_prolific
        highest_prolific = prolific_score
      end
    end
    winner
    binding.pry
  end

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  # [x] #paintings returns an array all the paintings by an artist
  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  # [x] #galleries returns an array of all the galleries that an artist has paintings in
  def galleries
    self.paintings.map do |painting|
      painting.gallery
    end
  end

  # [x] #cities return an array of all cities that an artist has paintings in
  def cities
    self.galleries.map do |gallery|
      gallery.city
    end
  end

  # [x] #create_painting: given the arguments of title, price and gallery, creates a new painting belonging to that artist
  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end # end of Artist class
