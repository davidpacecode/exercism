class Series

  def initialize(str)
    if str == ""
      raise ArgumentError, "String can't be empty"
    end
    @str = str
  end

  def slices(len)
    if (len == 0)
      raise ArgumentError, "String can't be empty"
    elsif len < 0
      raise ArgumentError, "Length can't be less than 0"
    elsif len > @str.length
      raise ArgumentError, "Substring length can't be longer than the string"
    else
      chars = @str.chars
      strs = []
      (0..chars.length - len).each do | i |
        str = ""
        (i..i + len - 1).each do | ci |
          str = str + chars[ci]
        end
        strs << str
      end
      strs
    end
  end
end

