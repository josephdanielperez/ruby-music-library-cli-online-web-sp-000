class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
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

  def self.create(name)
    new_genre = Genre.new(name)
    new_genre
  end

end
