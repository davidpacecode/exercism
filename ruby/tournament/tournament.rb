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
          standings[tokens[i]][:P] = 0
        end
      end
    end

    # set the W/D/L's
    input.split("\n").each do |line|
      tokens = line.split(";")
      if tokens[2] == "win"
        standings[tokens[0]][:W] += 1
        standings[tokens[0]][:P] += 3
        standings[tokens[1]][:L] += 1
      elsif tokens[2] == "loss"
        standings[tokens[0]][:L] += 1
        standings[tokens[1]][:W] += 1
        standings[tokens[1]][:P] += 3
      else
        standings[tokens[0]][:D] += 1
        standings[tokens[0]][:P] += 1
        standings[tokens[1]][:D] += 1
        standings[tokens[1]][:P] += 1
      end
    end
    formatted_standings = "Team                          | MP |  W |  D |  L |  P\n"
 
    puts formatted_standings
    sorted_standings = standings.sort_by { |_key, inner_hash| inner_hash[:P] }.reverse!.to_h
    puts sorted_standings

    sorted_standings.each_key do |key|
      formatted_standings = formatted_standings + "#{key}             |  #{standings[key][:W] + standings[key][:D] + standings[key][:L]} |  #{standings[key][:W]} |  #{standings[key][:D]} |  #{standings[key][:L]} |  #{standings[key][:W] * 3 + standings[key][:D]}\n"
    end
    formatted_standings
  end
end

# input = <<~INPUT
#   Allegoric Alaskans;Blithering Badgers;win
#   Blithering Badgers;Courageous Californians;win
#   Courageous Californians;Allegoric Alaskans;loss
# INPUT


input = <<~INPUT
  Team                           | MP |  W |  D |  L |  P
  Allegoric Alaskans             |  1 |  0 |  1 |  0 |  1
  Blithering Badgers             |  1 |  0 |  1 |  0 |  1
INPUT

actual = Tournament.tally(input)
