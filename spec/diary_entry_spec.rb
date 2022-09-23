require 'diary_entry'

RSpec.describe DiaryEntry do
  context "initialize" do
    it "should initialize with title" do
      diary_entry = DiaryEntry.new("Day 1", "I love pizza.")
      expect(diary_entry.title).to eq "Day 1"
    end

    it "should initialize with contents" do
      diary_entry = DiaryEntry.new("Day 1", "I love pizza.")
      expect(diary_entry.contents).to eq "I love pizza."
    end
  end

  context "counts_words" do
    it "returns the number of words in the contents as an integer" do
      diary_entry = DiaryEntry.new("Day 1", "I love pizza.")
      expect(diary_entry.count_words).to eq 3
    end
  end

  context "reading_time" do
    it "returns an integer representing an estimate of the reading time in minutes for the contents at the given wpm" do
      diary_entry = DiaryEntry.new("Day 1", "I love pizza.")
      expect(diary_entry.reading_time(200)).to eq 1
    end

    it "returns an integer representing an estimate of the reading time in minutes for the contents at the given wpm" do
      diary_entry = DiaryEntry.new("Day 1", "one " * 5000)
      expect(diary_entry.reading_time(200)).to eq 25
    end

    it "returns an integer representing an estimate of the reading time in minutes for the contents at the given wpm" do
      diary_entry = DiaryEntry.new("Day 1", "one " * 1900)
      expect(diary_entry.reading_time(200)).to eq 10
    end
  end

  context "reading_chunk" do
    it "returns whole chunk" do
      diary_entry = DiaryEntry.new("Day 1", "one two three")
      expect(diary_entry.reading_chunk(200, 1)).to eq "one two three"
    end
  end

  context "reading_chunk" do
    it "returns readable chunk" do
      diary_entry = DiaryEntry.new("Day 1", "one two three")
      expect(diary_entry.reading_chunk(2, 1)).to eq "one two"
    end
  end

  context "reading_chunk" do
    it "returns new readable chunk" do
      diary_entry = DiaryEntry.new("Day 1", "one two three")
      diary_entry.reading_chunk(2, 1)
      expect(diary_entry.reading_chunk(2, 1)).to eq "three"
    end
  end

  context "reading_chunk" do
    it "returns readable chunk from start" do
      diary_entry = DiaryEntry.new("Day 1", "one two three")
      diary_entry.reading_chunk(2, 1)
      diary_entry.reading_chunk(2, 1)
      expect(diary_entry.reading_chunk(2, 1)).to eq "one two"
    end
  end

  context "reading_chunk" do
    it "returns readable chunk from start" do
      diary_entry = DiaryEntry.new("Day 1", "one two three")
      diary_entry.reading_chunk(2, 1)
      diary_entry.reading_chunk(1, 1)
      expect(diary_entry.reading_chunk(2, 1)).to eq "one two"
    end
  end

  # context "reading_chunk" do
  #   it "returns a string with a chunk of the contents that the user could read in the given number of minutes" do
  #     diary_entry = DiaryEntry.new("Day 1", "one " * 5000)
  #     expect(diary_entry.reading_chunk(200, 10)).to eq "one " * 1900
  #   end
  # end
end
