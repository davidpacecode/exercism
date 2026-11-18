class Luhn

  def self.valid?(luhn)
    luhn.delete!(' ')
    if !luhn.match?(/\A\d+\z/)
      return false
    end
    if luhn.length == 1
      return false
    end

    index = 0
    temp_str = ""

    luhn.reverse.each_char do |char|
      if index.even?
        temp_str += char
      else
        if (char.to_i * 2) > 9
          temp_str += ((char.to_i * 2) - 9).to_s
        else
          temp_str += (char.to_i * 2).to_s
        end
      end
      index += 1
    end
 
    sum = 0
    temp_str.each_char do |char|
      sum+= char.to_i
    end

    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end

