class Grains

  def self.square(square_num)
    2 ** (square_num - 1)
  end

  def self.total
    squares = 64
    total = []
    until squares == 0
      amount = self.square(squares)
      total << amount
      squares -= 1
    end
    total.reduce(:+)
  end

end
