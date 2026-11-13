class Phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
#    puts "original phrase =   #{@phrase}"
    @phrase = @phrase.gsub(/'/, "SINGLEQUOTE")
    @phrase = @phrase.gsub(/\W/, ' ')
    @phrase = @phrase.gsub(/SINGLEQUOTE/, '\'')
#    puts "new phrase =        #{@phrase}"
    @phrase = @phrase.split(' ').map { |word| word.downcase }
    wc = {}
#    @phrase = @phrase.map { | word | word = word[0..word.length - 2] if word[word.length] == '\'' }
#     @phrase.each do | word |
#             word = word[1..word.length - 1] if word[0] == '\''
#     end
    @phrase.uniq.each do | word|
      count = @phrase.count { | w | w == word }
      puts "#{word} - #{count}"
      wc[word] = count
    end
    wc
  end
end

actual = Phrase.new("one fish two fish red fish blue fish").word_count


actual = Phrase.new("car: car Carpet's as java: javascript!!&@$%^&").word_count
