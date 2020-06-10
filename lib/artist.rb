class Artist 
  attr_accessor :name, :songs
    
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

  def self.create(name)
    artist = self.new(name)
    artist.name = name
    artist
  end
  
  def self.find(name)
    self.all.detect {|artist| artist.name == name}
  end
  
  

end