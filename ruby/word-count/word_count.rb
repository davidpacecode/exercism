class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    @phrase = @phrase.gsub(/'/, "SINGLEQUOTE")
    @phrase = @phrase.gsub(/\W/, ' ')
    @phrase = @phrase.gsub(/SINGLEQUOTE/, '\'')

    @phrase = @phrase.split(' ').map { |word| word.downcase }
    wc = {}
    
    @phrase.each do | word|
      if word[0] == "'"
        word.delete_prefix!("'")
      end
      if word[word.length - 1] == "'"
        word.delete_suffix!("'")
      end
    end

    @phrase.delete_if { |element| element == "" }

    @phrase.uniq.each do | word|
      count = @phrase.count { | w | w == word }
      wc[word] = count
    end
    wc
  end
end

