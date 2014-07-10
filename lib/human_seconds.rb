require "human_seconds/version"

class HumanSeconds
  attr_reader :seconds

  def initialize(seconds)
    @seconds = seconds
  end

  def to_i
    seconds
  end

  def to_s
    str = ""

    if ref_hours != 0
      str << "#{ref_hours}h"
    end

    if ref_minutes != 0
      str << "#{ref_minutes}m"
    end

    if ref_seconds != 0
      str << "#{ref_seconds}s"
    end

    str
  end

  private

  def ref_time
    @ref_time ||= Time.at(0).utc + seconds
  end

  def ref_hours
    ref_time.hour + ( (seconds / 86_400) * 24 )
  end

  def ref_minutes
    ref_time.min
  end

  def ref_seconds
    ref_time.sec
  end
end