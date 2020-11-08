class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    count = 0
    @@genres.each do |genre|
      count = @@genres.count {|x| x == genre}
        genre_count[genre] = count
    end
    genre_count
  end




  def self.artist_count
    artist_count = {}
    count = 0
    @@artists.each do |artist|
      count =  @@artists.count{|x| x == artist}
       artist_count[artist] = count
  end
  artist_count
  end
end
