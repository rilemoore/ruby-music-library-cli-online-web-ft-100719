class Song
  
  
  attr_accessor :name, :genre
  attr_reader :artist
  @@all=[]
  
  def initialize(name, artist=nil, genre=nil)
    @name = name
    @artist = artist if artist
    @genre = genre  if genre
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all = []
  end
  
  def save
    @@all << self
  end

  
  def add_song(song)
    song.artist=self
  end
  
  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end
  
end