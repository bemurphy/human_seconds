require "human_seconds/version"

class HumanSeconds
  attr_reader :seconds

  def initialize(seconds)
    @seconds = seconds
  end

  def self.parse(str)
    m = str.match(/(\d+d)?(\d+h)?(\d+m)?(\d+s)?/)

    if m[0].empty?
      raise ArgumentError, "Unparseable string #{str}"
    else
      seconds = (m[1].to_i * 86_400) + (m[2].to_i * 3600) +
        (m[3].to_i * 60) + m[4].to_i

      new(seconds)
    end
  end

  def to_i
    seconds
  end

  def to_s
    [
      "#{ref_days}d",
      "#{ref_hours}h",
      "#{ref_minutes}m",
      "#{ref_seconds}s",
    ].reject { |t| t.start_with?('0') }.join
  end

  private

  def ref_time
    @ref_time ||= Time.at(0).utc + seconds
  end

  def ref_days
    seconds / 86_400
  end

  def ref_hours
    ref_time.hour
  end

  def ref_minutes
    ref_time.min
  end

  def ref_seconds
    ref_time.sec
  end
end
