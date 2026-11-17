class Isogram
  def self.isogram?(input)
    input.delete('- ').downcase.chars.count == input.delete('- ').downcase.chars.uniq.count
  end
end

