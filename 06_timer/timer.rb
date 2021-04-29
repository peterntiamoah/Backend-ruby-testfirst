class Timer
  #write your code here
  attr_accessor :seconds

  def initialize()
    @seconds = 0
  end

  def time_string()
    seconds_string = proper_format((seconds % 60).to_s)
    minutes_string = proper_format(((seconds / 60) % 60).to_s)
    hours_string = proper_format((seconds / 3600).to_s)

    hours_string + ":" + minutes_string + ":" + seconds_string
  end

  def proper_format(string)
    if (string.length == 1)
      string = "0" + string
    end
    string
  end

end
