class Genre
  attr_accessor :genre
  @@all = []

  def initialize(name)
    @genre = name
    save
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(genre)
    new_genre = Genre.new(genre)
    new_genre
  end

end
