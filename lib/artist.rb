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
  
  def self.find_or_create_by_name(name)
    if #exists
      @@all.find{|artist_name| artist_name.name 
    
  end
  
end