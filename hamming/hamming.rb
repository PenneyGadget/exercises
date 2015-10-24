class Hamming
  VERSION = 1

  def self.compute(strand_one, strand_two)
    if strand_one == strand_two
      0
    else
      fail ArgumentError if strand_one.length != strand_two.length
      hamming_number(strand_one, strand_two)
    end
  end

  def self.hamming_number(strand_one, strand_two)
    counter = 0
    strand_one.length.times.each do |i|
      counter += 1 if strand_one[i] != strand_two[i]
    end
    counter
  end
end
