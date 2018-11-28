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
    Painting.all.select {|painting| painting if painting.artist == self}
  end


  def galleries
    self.paintings.map {|painting| painting.gallery}
  end

  def cities
    self.galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
    sum = 0
    self.all.map {|artist| artist.years_experience}.each {|years| sum += years}
    sum
  end

  def self.most_prolific
        #looks through artist and finds the
    #instance of artist with highest
    #amount of paintings per year of exp
    #this means taking number of paintings/years of exp
    #returning the artist with this greatest value

    #looks through all artists
    #takes in num of paintings and years of exp - divides them
    #compares this number to each other
    #returns artist instance with highest value for this

    #hash = {}
    #all_artists = self.all
    #all_artists.each do |artist, avg|
      #avg = artist.paintings.count/artist.years_experience
      #hash[artist] = avg
    #end

    #hash[artist]= self.paintings.count/self.years_experience


    #artist_num_of_paintings = self.paintings.count
    #artist_years_exp = self.years_experience

    #avg_paintings = artist_num_of_paintings/artist_years_exp
    #avg_paintings.sort.last

    @@all.map {|artist| [artist, artist.paintings.length.to_f/artist.years_experience]}.sort_by { |arr| arr[1]}[-1][0]
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
