class Tournament

  def self.tally(input)
    # initialize standings hash of hashes
    standings = Hash.new { |hash, key| hash[key] = {} }

    # set the teams
    input.split("\n").each do |line|
      tokens = line.split(";")
      (0..1).each do |i|
        if !standings.key?(tokens[i])
          standings[tokens[i]][:W] = 0
          standings[tokens[i]][:D] = 0
          standings[tokens[i]][:L] = 0
        end
      end
    end

    # set the W/D/L's
    input.split("\n").each do |line|
      tokens = line.split(";")
      if tokens[2] == "win"
        standings[tokens[0]][:W] += 1
        standings[tokens[1]][:L] += 1
      elsif tokens[2] == "loss"
        standings[tokens[0]][:L] += 1
        standings[tokens[1]][:W] += 1
      else
        standings[tokens[0]][:D] += 1
        standings[tokens[1]][:D] += 1
      end
    end
    puts "Team\t\t\t| MP |  W |  D |  L |  P"
    standings.each_key do |key|
      puts "#{key}\t|  #{standings[key][:W] + standings[key][:D] + standings[key][:L]} |  #{standings[key][:W]} |  #{standings[key][:D]} |  #{standings[key][:L]} |  #{standings[key][:W] * 3 + standings[key][:D]}"
    end
  end
end

input = <<~INPUT
  Allegoric Alaskans;Blithering Badgers;win
  Blithering Badgers;Courageous Californians;win
  Courageous Californians;Allegoric Alaskans;loss
INPUT

actual = Tournament.tally(input)
