require 'minitest/spec'
require 'minitest/autorun'

require_relative '../lib/human_seconds'

describe HumanSeconds do
  it "is initialized with integer seconds" do
    human_seconds = HumanSeconds.new(61)
    assert_equal 61, human_seconds.to_i
  end

  it "can convert seconds like 59 to '59s'" do
    human_seconds = HumanSeconds.new(59)
    assert_equal "59s", human_seconds.to_s
  end

  it "can convert seconds like 60 to '1m'" do
    human_seconds = HumanSeconds.new(60)
    assert_equal "1m", human_seconds.to_s
  end

  it "can convert seconds like 7212 to '2h12s'" do
    human_seconds = HumanSeconds.new(7212)
    assert_equal "2h12s", human_seconds.to_s
  end

  it "can convert seconds like 7261 to '2h1m1s'" do
    human_seconds = HumanSeconds.new(7261)
    assert_equal "2h1m1s", human_seconds.to_s
  end

  it "can convert seconds like 7261 to '2h1m1s'" do
    human_seconds = HumanSeconds.new(7261)
    assert_equal "2h1m1s", human_seconds.to_s
  end

  it "can convert seconds like 176461 to '49h1m1s'" do
    human_seconds = HumanSeconds.new(176461)
    assert_equal "49h1m1s", human_seconds.to_s
  end
end
