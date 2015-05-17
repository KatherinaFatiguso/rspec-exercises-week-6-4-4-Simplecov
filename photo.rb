class Photo
  attr_reader :taken_at, :taken_by, :filename

  def initialize(filename, taken_by, taken_at)
    @filename = filename
    @taken_at = taken_at
    @taken_by = taken_by
  end

  def to_s
    "#{@filename} #{@taken_at} #{@taken_by}"
  end

  def days_since_taken
    ((Time.now - @taken_at) / (24 * 60 * 60)).to_i
  end
end
