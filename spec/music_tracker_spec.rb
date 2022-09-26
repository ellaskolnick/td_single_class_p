require 'music_tracker'

RSpec.describe MusicTracker do
  context "adding a track" do
    it "returns an array with 'Sign of the Times'" do
      music_tracker = MusicTracker.new
      music_tracker.add("Sign of the Times")
      expect(music_tracker.my_tracks).to eq ["Sign of the Times"]
    end
  end

  context "adding multiple tracks" do
    it "returns an array with 'Watermelon Sugar' and 'Music for a Sushi Restaurant'" do
      music_tracker = MusicTracker.new
      music_tracker.add("Watermelon Sugar")
      music_tracker.add("Music for a Sushi Restaurant")
      expect(music_tracker.my_tracks).to eq ["Watermelon Sugar", "Music for a Sushi Restaurant"]
    end
  end

  context "no tracks added" do
    it "fails" do
      music_tracker = MusicTracker.new
      expect{ music_tracker.my_tracks }.to raise_error "No tracks set."
    end
  end

  context "adding an empty string" do
    it "fails" do
      music_tracker = MusicTracker.new
      expect{ music_tracker.add("") }.to raise_error "Track cannot be an empty string."
    end

    it "fails" do
      music_tracker = MusicTracker.new
      expect{ music_tracker.add(" ") }.to raise_error "Track cannot be an empty string."
    end
  end
end
