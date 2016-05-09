class Pangram

  VERSION = 1

  def self.is_pangram?(string)
    alphabet = ('a'..'z').to_a
    split_string = string.downcase.split("")
    alphabet.all? { |l| split_string.include?(l) }
  end

end
