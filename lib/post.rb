class Post
  @@all = []
  attr_accessor :title
  attr_reader :author

  def initialize(title)
    self.title = title
    @@all << self
  end

  def author=(author)
    @author = author
    author.posts << self
  end

  def self.all
    @@all
  end

  def author_name
    return self.author.name if self.author
    nil
  end
end