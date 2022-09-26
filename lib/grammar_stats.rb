class GrammarStats
  def initialize
    @checked = 0
    @counter = 0
  end

  def check(text)
    fail "String is empty!" if text == "" || text == " "
    first_letter = text.chars.first.upcase == text.chars.first
    # punctuation = !(text.chars.last.match?(/\w/))
    punctuation = [".", "!", "?"].include?(text.chars.last)
    if first_letter && punctuation
      @checked += 1
      @counter += 1
      true
    else
      @counter += 1
      false
    end
  end

  def percentage_good
    fail "Nothing has been checked yet!" if @counter.zero?
    return (@checked / @counter.to_f) * 100
  end
end
