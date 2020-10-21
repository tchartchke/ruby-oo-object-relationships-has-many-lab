class Song
  @@all = []
  attr_accessor :name
  attr_reader :artist

  def initialize(name)
    self.name = name
    @@all << self
  end

  def artist=(artist)
    @artist = artist
    artist.songs << self
  end

  def self.all
    @@all
  end

  def artist_name
    return self.artist.name if self.artist
    nil
  end
end