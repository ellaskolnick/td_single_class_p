require 'grammar_stats'

RSpec.describe GrammarStats do
  context "check method with a capital letter and sentence-ending punctuation mark" do
    it "returns true" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("Hi!")).to eq true
    end
  end

  context "empty string" do
    it "fails" do
      grammar_stats = GrammarStats.new
      expect{ grammar_stats.check("") }.to raise_error "String is empty!"
    end
  end

  context "empty string" do
    it "fails" do
      grammar_stats = GrammarStats.new
      expect{ grammar_stats.check(" ") }.to raise_error "String is empty!"
    end
  end

  context "no capital" do
    it "returns false" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("hi!")).to eq false
    end
  end

  context "no punctuation" do
    it "returns false" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("Hi")).to eq false
    end
  end

  context "wrong punctuation" do
    it "returns false" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("Hi,")).to eq false
    end
  end

  context "no punctuation and no capital" do
    it "returns false" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("hi")).to eq false
    end
  end

  context "wrong punctuation and no capital" do
    it "returns false" do
      grammar_stats = GrammarStats.new
      expect(grammar_stats.check("hi,")).to eq false
    end
  end
end
