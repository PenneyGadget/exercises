class Fixnum

  def to_roman
    # case self
    # when 4 then 'IV'
    # when 5 then 'V'
    # when 6 then 'VI'
    # when 9 then 'IX'
    # else 'I' * self
    # end
    num = self
    str = ''
    while num > 0
      if num - 1000 >= 0
        str << 'M'
        num -= 1000
      elsif num - 900 >= 0
        str << 'CM'
        num -= 900
      elsif num - 500 >= 0
        str << 'D'
        num -= 500
      elsif num - 400 >= 0
        str << 'CD'
        num -= 400
      elsif num - 100 >= 0
        str << 'C'
        num -= 100
      elsif num - 90 >= 0
        str << 'XC'
        num -= 90
      elsif num - 50 >= 0
        str << 'L'
        num -= 50
      elsif num - 40 >= 0
        str << 'XL'
        num -= 40
      elsif num - 10 >= 0
        str << 'X'
        num -= 10
      elsif num -9 >= 0
        str << 'IX'
        num -= 9
      elsif num - 5 >= 0
        str << 'V'
        num -= 5
      elsif num - 4 >= 0
        str << 'IV'
        num -= 4
      else
        str << 'I'
        num -= 1
      end
      break if num == 0
    end
    str
  end

end

# M = 1000
# D = 500
# C = 100
# L = 50
# X = 10
# V = 5
# I = 1
