class Robot

  attr_reader :name

  def initialize(name = generate_name)
    @name = name
  end

  def generate_name
    name = ""
    letters = ('A'..'Z').to_a
    2.times { name << letters.sample }
    3.times { name << rand(0..9).to_s }
    name
  end

  def reset
    @name = generate_name
  end

end
