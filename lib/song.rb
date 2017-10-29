class Song
attr_accessor :name :artist :genre

@@song_count = 0
@@genres = []

  def initialize
    @@song_count += 1
    if @@genres.include?(genre) == false
      @@genres << @genre
  end

  def self.count
    @@song_count
  end

  def self.artists
  end

  def self.genres
  end

  def self.genre_count
  end

  def self.artist_count
  end

end
