class Prime

  def self.nth(num)
    check_valid_input(num)
    i = 1
    counter = 0
    while counter < num
      i += 1
      counter += 1 if is_prime?(i)
    end
    i
  end

  def check_valid_input(num)
    if num < 1
      fail ArgumentError
    end
  end

  def is_prime?(num)
    (2...num).each do |n|
      return false if num % n == 0
    end
    true
  end

end
