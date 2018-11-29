class Artist

  attr_reader :name, :years_experience
  @@all = []
  def self.all
    @@all
  end

  def self.total_experience
      @@all.reduce(0) do |sum, element|
        sum + element.years_experience
      end
    end

    def self.most_prolific
      hash = {}
      Artist.all.map do |artist_inst|
        # binding.pry
        hash[artist_inst] = ((artist_inst.paintings.length + 0.0) / artist_inst.years_experience)
      end
      hash.sort_by{|k,v| v }[0][0]

    end



  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def paintings
    Painting.all.select do |painting_inst|
      # binding.pry
      painting_inst.artist == self
    end
  end

  def galleries
    paintings.map do |painting_inst|
      painting_inst.gallery
    end
  end

  def cities
    galleries.map do |gallery_inst|
      gallery_inst.city
    end
  end

    def create_painting(title, price, gallery)
      Painting.new(title,price,self,gallery)
  end
end
