# Album class
class Album # Albums have an artist, title, and tracks
  @@album_collection = []
  attr_reader :artist, :title

  def initialize(artist, title, tracks)
    @artist = artist
    @title = title
    @tracks = tracks
    @@album_collection << self
  end

  def self.search_title(title)
    @@album_collection.find { |i| i == title }
  end
end
