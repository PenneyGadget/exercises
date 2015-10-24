class Raindrops

  def self.convert(number)
    rain = ""
    if number % 3 == 0
      rain << "Pling"
    end
    if number % 5 == 0
      rain << "Plang"
    end
    if number % 7 == 0
      rain << "Plong"
    end
    if number % 3 != 0 && number % 5 != 0 && number % 7 != 0
      rain = number.to_s
    end
    rain
  end

end
