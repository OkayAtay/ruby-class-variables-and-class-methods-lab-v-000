require "pry"

class Song
attr_accessor :name, :artist, :genre

@@count = 0
@@artist_count = {}
@@genre_count = {}
@@genres = []
@@artists = []


  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @@artists << artist
    @genre=genre
    @@genres << genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists = @@artists.uniq
  end

  def self.genres
    @@genres = @@genres.uniq
  end

#@@genres = [pop, rap, rap]
#genre_count
  #need to return {pop =>1, rap => 2}

  def self.genre_count
    count = []
    count = @@genres.group_by{|genre| genre}.map{|k, v| [k, v.count]}
    @@genre_count = count.flatten
  end

  def self.artist_count
  end

end
