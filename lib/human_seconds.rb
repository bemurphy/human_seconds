require "human_seconds/version"

class HumanSeconds
  attr_reader :total_seconds

  def initialize(total_seconds)
    @total_seconds = total_seconds
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
    total_seconds
  end

  def to_s
    [
      "#{days}d",
      "#{hours}h",
      "#{minutes}m",
      "#{seconds}s",
    ].reject { |t| t.start_with?('0') }.join
  end

  private

  def ref_time
    @ref_time ||= Time.at(0).utc + total_seconds
  end

  def days
    total_seconds / 86_400
  end

  def hours
    ref_time.hour
  end

  def minutes
    ref_time.min
  end

  def seconds
    ref_time.sec
  end
end
