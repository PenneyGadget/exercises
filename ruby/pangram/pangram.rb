class Pangram

  VERSION = 1

  def self.is_pangram?(string)
    alphabet = [*'a'..'z']
    alphabet.all? { |l| string.downcase.include?(l) }
  end

end
