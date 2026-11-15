class Hamming

  def self.compute(str1, str2)
    raise ArgumentError, "" if str1.length != str2.length
    hamming_num = 0
    (0..str1.length).each do | i |
      hamming_num += 1 if str1[i] != str2[i]
    end
    hamming_num
  end
end

