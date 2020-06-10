class Artist 
  attr_accessor :name
    
    @@all = []
    
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
   def self.create_by_name(name)
    artist = self.new_by_name(name)
    artist.save 
    artist
  end
  
  def self.find_by_name(name)
    self.all.find {|artist| artist.name == name}
  end
 def self.find_or_create_by_name(name)
    if artist = self.find_by_name(name)
      artist
    else
      self.create_by_name(name)
    end
  end

  
end