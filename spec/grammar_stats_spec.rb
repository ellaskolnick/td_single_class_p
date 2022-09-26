require 'grammar_stats'

RSpec.describe GrammarStats do
  context "check method" do
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

  context "percentage_good" do
    context "checked is not empty" do
      it "returns 50" do
        grammar_stats = GrammarStats.new
        grammar_stats.check("Hi!")
        grammar_stats.check("Hi")
        expect(grammar_stats.percentage_good).to eq 50
      end
    end

    context "all checks passed" do
      it "returns 100" do
        grammar_stats = GrammarStats.new
        grammar_stats.check("Hi!")
        grammar_stats.check("Hi!")
        expect(grammar_stats.percentage_good).to eq 100
      end
    end

    context "all checks were false" do
      it "returns 0" do
        grammar_stats = GrammarStats.new
        grammar_stats.check("Hi")
        grammar_stats.check("Hi")
        expect(grammar_stats.percentage_good).to eq 0
      end
    end

    context "checked is empty" do
      it "fails" do
        grammar_stats = GrammarStats.new
        expect{ grammar_stats.percentage_good }.to raise_error "Nothing has been checked yet!"
      end
    end
  end
end
