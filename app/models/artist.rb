class Artist

  attr_reader :name, :years_experience

  @@all = []

  # * `Artist.all`
  #   * Returns an `array` of all the artists

  def self.all
    @@all
  end

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  # * `Artist#paintings`
  #   * Returns an `array` all the paintings by an artist

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  # * `Artist#galleries`
  #   * Returns an `array` of all the galleries that an artist has paintings in

  def galleries
    paintings.map do |painting|
      painting.gallery
    end
  end

  # * `Artist#cities`
  #   * Return an `array` of all cities that an artist has paintings in

  def cities
    galleries.map do |gallery|
      gallery.city
    end
  end

    # * `Artist.total_experience`
    #   * Returns an `integer` that is the total years of experience of all artists
    #
  def self.total_experience
    self.all.reduce(0) {|start, obj| start + obj.years_experience}
  end

    # * `Artist.most_prolific`
    #   * Returns an `instance` of the artist with the highest amount of paintings per year of experience.

  def self.most_prolific
    most_prolific_number = nil
    most_prolific_artist = nil
    Artist.all.each do |artist|
      if most_prolific_number == nil || most_prolific_number < artist.paintings.count.to_f/artist.years_experience.to_f
        most_prolific_number = artist.paintings.count.to_f/artist.years_experience.to_f
        most_prolific_artist = artist
      end
    end
    most_prolific_artist
  end

    #
    # * `Artist#create_painting`
    #   * Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist

                      #(title, price, artist, gallery)
  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end



end
