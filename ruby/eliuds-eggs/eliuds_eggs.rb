class EliudsEggs
  def self.egg_count(code)
    sprintf('%b', code).count('1')
  end
end

