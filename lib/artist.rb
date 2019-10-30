class Artist
  
  attr_accessor :name, :songs, :genres
  
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs=[]
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all = []
  end
  
  def self.create(name)
    artist=Artist.new(name)
    artist.save
    artist
  end
  
  def add_song(song)
    #song.artist = self unless song.artist==self
    @songs << song unless @songs.include?(song)
  end
  
  def genres
    
  end
  
end