

class Genre 
  
 extend Concerns::Findable
  
  attr_accessor :name
  attr_reader 
  
  @@all = []
  
    def initialize(name)
      @name = name 
      @songs = []
      @@all << self 
    end 
    
    def songs
      @songs 
    end 
  
    def save
      @@all << self 
    end 
    
    def self.name 
      self.genre 
    end 
    
    def self.all
      @@all 
    end 
  
    def self.create(name)
      genre = self.new(name)
        @@all << genre
          genre
    end
  
    def self.destroy_all
        @@all.clear
    end 
    
   def artists
    artists = @songs.collect do |song|
      song.artist
    end
    artists.uniq
  end
  
  
end 