class Year

  VERSION = 1

  def self.leap?(year)
    condition_1 = (year % 4 != 0)
    condition_2 = (year % 4 == 0)
    condition_3 = (year % 100 != 0)
    condition_4 = (year % 400 == 0)

    if condition_1
      false
    elsif
      condition_2 && condition_3 || condition_2 && condition_4
      true
    end
  end

end
