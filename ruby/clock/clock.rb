class Clock

  def initialize(hour: 0, minute: 0)

    puts "hour is #{hour} and minute is #{minute}"
    addnl_hours = minute / 60
    puts "addnl_hours is #{addnl_hours}"
    
    base_hours = hour.remainder(24)
    puts "base_hours is #{base_hours}"

    puts "base_hours + addnl_hours is #{base_hours + addnl_hours}"

    if (base_hours + addnl_hours) >= 0
      @hour = (base_hours + (addnl_hours)).remainder(24)
    else
      # @hour = (24 - (base_hours + addnl_hours).abs).remainder(24).abs
      # puts "@hour is #{(24 - (base_hours + addnl_hours).abs).remainder(24)}"
      puts "#{(0 - (base_hours + addnl_hours).abs).remainder(24)}"
      @hour = 24 - ((base_hours + addnl_hours).abs).remainder(24)
    end

    puts "#{minute}.remainder(60) = #{minute.remainder(60)}"
    @minute = minute.remainder(60)

    if minute == -60
      @minute = 0 # handling edge case handled above with addnl_hours
    else
      @minute = 60 - @minute.abs if minute < 0
    end

    puts "about to call Time.new(2026, 1, 1, #{@hour}, #{@minute}"
    @time = Time.new(2026, 1, 1, @hour, @minute)
  end

  def time
    @time
  end

  def hour
    @hour
  end

  def minute
    @minute
  end
  
  def seconds
    (@hour * 60 * 60) + (@minute * 60)
  end

  def to_s
    @time.strftime('%H:%M')
  end

  def +(clock2)
    @time + clock2.seconds
  end
 
  def -(clock2)
   @time - clock2.seconds
  end

  def ==(clock2)
    # @time.to_s.strip == clock2.to_s.strip
    @hour == clock2.hour && @minute == clock2.minute
  end
end



# # '02:40', 
# puts Clock.new(minute: 160).to_s
# # '04:43', 
# puts Clock.new(minute: 1723).to_s
# #'03:40', 
# puts Clock.new(hour: 25, minute: 160).to_s
# #'11:01', 
# puts Clock.new(hour: 201, minute: 3001).to_s
# 
# puts Clock.new(hour: 7, minute: 32)
# puts Clock.new(hour: -12, minute: -268)

# clock = Clock.new(hour: 10) + Clock.new(minute: 61)
# puts clock
# puts "clock is #{clock}"
# puts "clock + Clock.new(minute: 61)).to_s is #{(clock + Clock.new(minute: 61)).to_s}"
# 11:01

# '01:00', 
# puts Clock.new(hour: 2, minute: -60).to_s

# '22:10', 
# puts Clock.new(hour: -121, minute: -5810).to_s

# clock1 = Clock.new(hour: 13, minute: 49)
# clock2 = Clock.new(hour: -83, minute: 49)
# puts clock1
# puts clock2

clock1 = Clock.new(hour: 18, minute: 7)
clock2 = Clock.new(hour: -54, minute: -11_513)

 puts clock1
 puts clock2
# puts Time.new(2026, 1, 1, 12, 7).strftime('%H:%M')

clock = Clock.new(minute: 3)
clock2 = Clock.new(minute: 4)
puts (clock - clock2).to_s
puts "23:59"
puts "clock.hour = #{clock.hour} clock.minute = #{clock.minute}"
puts "clock2.hour = #{clock2.hour} clock2.minute = #{clock2.minute}"
