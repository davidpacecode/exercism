class Raindrops

  def self.convert(input)
    sounds = ""
    if input % 3 == 0
      sounds += "Pling"
    end
    if input % 5 == 0
      sounds += "Plang"
    end
    if input % 7 == 0
      sounds += "Plong"
    end
    if (input % 3 != 0) && (input % 5 != 0) && (input % 7 != 0)
      sounds += input.to_s
    end
    sounds
  end
end

