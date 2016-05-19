require 'pry'

class Sieve

  attr_accessor :primes, :upper_num, :numbers

  def initialize(upper_num)
    @primes = []
    @upper_num = upper_num
    @numbers = [*2..@upper_num]
    collect_primes
  end

  def collect_primes
    if upper_num == 1
      primes
    else
      numbers.map do |n|
        if is_prime?(n)
          primes << n
        else
          numbers.delete(n)
        end
      end
      # primes << remove_non_primes
      # primes.flatten!
    end
    primes
  end

  def is_prime?(num)
    (2...num).each do |n|
      return false if num % n == 0
    end
    true
  end

  # def remove_non_primes
  #   numbers.delete_if { |n| n % 2 == 0 && n != 2 }
  #   numbers.delete_if { |n| n % 3 == 0 && n != 3 }
  # end

end
