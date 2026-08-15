class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed <= 4
      @speed * 221
    elsif @speed <= 8
      @speed.to_f * 221.0 * 0.9
    elsif @speed == 9
      @speed.to_f * 221.0 * 0.8
    else
      @speed.to_f * 221.0 * 0.77
    end
  end

  def working_items_per_minute
    production_rate_per_hour.to_i / 60
  end
end

puts AssemblyLine.new(6).production_rate_per_hour

puts AssemblyLine.new(6).working_items_per_minute
