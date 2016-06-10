# Album class
class Album # Albums have an artist, title, and tracks
  attr_reader :artist, :title
  attr_accessor :tracks

  @@collection = []

  def initialize(artist:, title:)
    @artist = artist
    @title = title
    @tracks = []

    @@collection << self
  end

  def self.all
    @@collection
  end

  def self.find_by_title(query)
    @@collection.select { |album| album.title == query }
  end
end

class Song
  attr_reader :title
  attr_accessor :rating

  def initialize(title:)
    @title = title
    @rating
  end
end

# t_swift = Album.new(artist: 'Taylor Swift', title: '1989')
# t_swift.tracks << Song.new(title: 'Shake It Off')
# t_swift.tracks << Song.new(title: 'Bad Blood')
#
# nevermind = Album.new(artist: 'Nirvana', title: 'Nevermind')
# nevermind.tracks << Song.new(title: 'Smells Like Teen Spirit')

# brians_favorite = Album.find_by_title('1989')
