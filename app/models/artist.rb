require 'pry'
class Artist

  attr_reader :name, :years_experience

  @@all = []

  def self.all
    @@all
  end
 #Returns an `integer`
 #that is the total years of experience of all artists
  def self.total_experience
    self.all.reduce(0) { |i, art_int| i + art_int.years_experience }
  end

  def self.most_prolific
    #compare the average amount of paintings per year
    #number of paintings / years_experience
    #once you have the average.
    #return that artist instance
    #is 0.25 greater than 0.2
    #Matt D would be the most prolific.
    #it only took me one year to paint one painting.
    painting_per_year_arr = self.all.map do |artist| #this is the artist instance use it!!!
        #this needed to be an array
       [artist, artist.paintings.size / artist.years_experience.to_f] #number of paintings.
     end
     #you now need to compair the array to the artist instances.
     sorted = painting_per_year_arr.sort_by do |artist|
       artist[1] #need to acccess second element in the array.
     end
     sorted[-1][0]
  end

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def paintings #all of the paintings by this artist
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
    #look through all the galleries.
    #if that gallery has a city
    #return an array of them
    self.galleries.map do |painting|
      #this is now an an array of all the cities
      painting.city
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end #end of Artist class method
