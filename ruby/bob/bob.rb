require 'pry'
class Bob
  def hey(remark)
    case
      when yelling?(remark) then return "Whoa, chill out!"
      when question?(remark) then return "Sure."
      when silent?(remark) then return "Fine. Be that way!"
      else return "Whatever."
    end
  end

  def yelling?(remark)
    remark == remark.upcase && remark != remark.downcase
  end
  
  def question?(remark)
    remark.end_with?("?")
  end

  def silent?(remark)
    remark.strip == ""
  end
end
