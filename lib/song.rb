class Song
attr_accessor :name :artists :genre

@@song_count = 0
@@genre_count = {}
@@artist_count = 0
@@genres = []
@@artists = []

  def initialize
    @@song_count += 1
    if @@genres.include?(genre) == false
      @@genres << genre
    end
    if @@artists.include?(artist) == false
      @@artists << artist
    end
  end

  def self.count
    @@song_count
  end

  def self.artists
    @@artists
  end

  def self.genres
    @@genres
  end

  def self.genre_count
  end

  def self.artist_count
  end

end
