class Tournament


  def self.tally(input)
    standings = {}
    input.split("\n").each do |line|
      tokens = line.split(";")
      (0..1).each do |i|
        if !standings.key?(tokens[i])
          standings = { Team: tokens[i] }
          record = { W: 0, D: 0, L: 0 }
          standings[tokens[i]] = team
          puts team
        end
      end
    end
    puts standings
  end
end

input = <<~INPUT
  Allegoric Alaskans;Blithering Badgers;win
  Blithering Badgers;Courageous Californians;win
  Courageous Californians;Allegoric Alaskans;loss
INPUT

actual = Tournament.tally(input)
