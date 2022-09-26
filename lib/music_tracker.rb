class MusicTracker
  def initialize
    @tracks = []
  end

  def add(track) # task is a string
    fail "Track cannot be an empty string." if track == "" || track == " "
    @tracks << track
  end

  def my_tracks
    fail "No tracks set." if @tracks.empty?
    @tracks
  end
end
