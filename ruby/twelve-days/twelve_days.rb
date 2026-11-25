class TwelveDays

  DAYS = %w[first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth].freeze
  LYRICS = ["a Partridge in a Pear Tree.", "two Turtle Doves,", "three French Hens,", "four Calling Birds,",
    "five Gold Rings,", "six Geese-a-Laying,", "seven Swans-a-Swimming,", "eight Maids-a-Milking,", "nine Ladies Dancing,",
    "ten Lords-a-Leaping,", "eleven Pipers Piping,", "twelve Drummers Drumming,"]

  def self.song
    verses = []
    full_song = ""
    DAYS.each_with_index do |day, i|
      verses[i] = "On the #{day} day of Christmas my true love gave to me:"
      if i == 0
        verses[i] = verses[i] + " " + LYRICS[i] + "\n\n"
      else
        i.downto(0).each do |j|
          verses[i] = verses[i] + " and" if j == 0
          verses[i] = verses[i] + " " + LYRICS[j]
        end
        verses[i] = verses[i] + "\n"
        verses[i] = verses[i] + "\n" unless i == (DAYS.count - 1)
      end
    end
    verses.each do |v|
      full_song = full_song + v
    end
    full_song
  end
end

