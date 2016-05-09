class Complement
  VERSION = 2

  def self.of_dna(nucleotide)
    complement = ""
    nucleotide.length.times do |i|
      complement = complement + find_dna_complement(nucleotide[i])
    end
    complement
  end

  def self.find_dna_complement(nucleotide)
    complement = ""
    if nucleotide == "G"
      complement = "C"
    elsif nucleotide == "C"
      complement = "G"
    elsif nucleotide == "T"
      complement = "A"
    elsif nucleotide == "A"
      complement = "U"
    else
      fail ArgumentError
    end
    complement
  end

  def self.of_rna(nucleotide)
    complement = ""
    nucleotide.length.times do |i|
      complement = complement + find_rna_complement(nucleotide[i])
    end
    complement
  end

  def self.find_rna_complement(nucleotide)
    complement = ""
    if nucleotide == "G"
      complement = "C"
    elsif nucleotide == "C"
      complement = "G"
    elsif nucleotide == "U"
      complement = "A"
    elsif nucleotide == "A"
      complement = "T"
    else
      fail ArgumentError
    end
    complement
  end
end
