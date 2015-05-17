
class Library
  def initialize
    @photos = []
  end

  def size
    @photos.size
  end

  def add_photo(photo)
    @photos << photo
  end

  # Remove the last photo
  def pop
    @photos.pop
  end

  # Clear library
  def clear!
    @photos = []
  end

  # Returns the most recent photo
  def latest
    @photos.sort_by { |photo| photo.taken_at }[-1]
  end
end
