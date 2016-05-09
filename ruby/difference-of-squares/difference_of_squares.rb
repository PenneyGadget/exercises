class Squares

  def initialize(number)
    @number = number
  end

  def square_of_sums(number = @number, sum = 0)
    if number == 0
      return sum**2
    else
      sum = sum + number
      number -= 1
      square_of_sums(number, sum)
    end
  end

  def sum_of_squares(number = @number, sum = 0)
    if number == 0
      return sum
    else
      sum = sum + number**2
      number -= 1
      sum_of_squares(number, sum)
    end
  end

  def difference
    square_of_sums - sum_of_squares
  end

end
