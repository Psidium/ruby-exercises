class Timer
  attr_accessor :minutes, :hours
  attr_reader :seconds
  def initialize 
    @seconds = 0
    @minutes = 0
    @hours = 0
  end
  
  def seconds=(second)
    while second > 60
      @minutes = second / 60
      second = second % 60
      while @minutes > 60
        @hours = @minutes / 60
        @minutes = @minutes % 60
      end
    end 
    @seconds = second
  end
  
  def time_string
    "%02d:%02d:%02d" % [hours, minutes, seconds]
  end
end