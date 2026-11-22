class TwelveDays

  DAYS = %w[first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth].freeze
  LYRICS = %w["two Turle Doves" "three French Hens" "four Calling Birds" "five Gold Rings" "six Geese-a-Laying" "seven Swans-a-Swimming"
     "eight Maids-a-Milking" "nine Ladies Dancing" "ten Lords-a-Leaping" "eleven Pipers Piping" "twelve Drummers Drumming"]

  def self.song
    lyrics = []
    DAYS.each_with_index do |day, i|
      lyrics << day[i]
    end
    verse
    lyrics
  end

  def self.verse
    LYRICS.each do |l|
      puts l
    end
  end
end

TwelveDays.song

