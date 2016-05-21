class Sieve
  attr_accessor :upper_num

  def initialize(upper_num)
    @upper_num = upper_num
  end

  def primes
    range = [*2..@upper_num]
    range.each_with_object([]) do |current, nums|
      nums << current
      range.reject! do |num|
        num % current == 0 && num > current
      end
    end
  end
end
