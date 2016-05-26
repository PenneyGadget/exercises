require 'pry'
class Bob
  def hey(remark)
    case
      when yelling?(remark) then "Whoa, chill out!"
      when question?(remark) then "Sure."
      when silent?(remark) then "Fine. Be that way!"
      else "Whatever."
    end
  end

  def yelling?(remark)
    remark == remark.upcase && remark != remark.downcase
  end

  def question?(remark)
    remark.end_with?("?")
  end

  def silent?(remark)
    remark.strip.empty?
  end
end
