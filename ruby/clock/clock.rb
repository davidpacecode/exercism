class Clock < Time

  def initialize(hour: 0, minute: 0)
    if minute >= 0
      addnl_hours = minute / 60
    else
      addnl_hours = -1 * (minute / 60)
    end

    if (hour + addnl_hours) >= 0
      @hour = (hour + (minute / 60)) % 24
    else hour >= 0 && minute < 0
      @hour = (24 - (hour + addnl_hours).abs)
    end

    if minute >= 0
      @minute = minute % 60
    else
      @minute = -1 * (minute % 60)
    end

    @time = Time.new(2026, 1, 1, @hour, @minute)
  end

  def to_s
    @time.strftime('%H:%M')
  end

   def +(time2)
     (@time + time2).strftime('%H:%M')
   end
 
   def -(time2)
     (@time - time2).strftime('%H:%M')
   end
end



# '02:40', 
puts Clock.new(minute: 160).to_s
# '04:43', 
puts Clock.new(minute: 1723).to_s
#'03:40', 
puts Clock.new(hour: 25, minute: 160).to_s
#'11:01', 
puts Clock.new(hour: 201, minute: 3001).to_s
 
