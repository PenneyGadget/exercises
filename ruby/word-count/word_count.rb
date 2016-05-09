class Phrase
  VERSION = 1
  attr_reader :string

  def initialize(string)
    @string = string
    word_count
  end

  def word_count
    sanitized = string.downcase.split(/[^\w']+/)
    unquoted = remove_single_quotes(sanitized)
    unquoted.inject(Hash.new(0)) { |hash, word| hash[word] += 1; hash }
  end

  def remove_single_quotes(sanitized)
    sanitized.map do |word|
      if word.start_with?("'") && word.end_with?("'")
        word.delete("'")
      else
        word
      end
    end
  end
end
