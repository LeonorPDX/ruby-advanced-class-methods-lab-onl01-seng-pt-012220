class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    Song.all << song
    song
  end
  
  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = self.new
    Song.all << song
    song.name = name
    song
  end
  
  def self.find_by_name(name)
    Song.all.find{|song| song.name == name}
  end
  
  def self.find_or_create_by_name(name)
    if self.all.include?(name)
      find_by_name
    else
      create_by_name
    end
  end

end
