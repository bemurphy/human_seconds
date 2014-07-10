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

describe HumanSeconds, '.parse' do
  it "can parse '59s' to an instance with 59 seconds" do
    human_seconds = HumanSeconds.parse('59s')
    assert_equal 59, human_seconds.to_i
  end

  it "can parse '1m' to an instance with 60 seconds" do
    human_seconds = HumanSeconds.parse('1m')
    assert_equal 60, human_seconds.to_i
  end

  it "can parse '2h12s' to an instance with 7212 seconds" do
    human_seconds = HumanSeconds.parse('2h12s')
    assert_equal 7212, human_seconds.to_i
  end

  it "can parse '2h1m1s' to an instance with 7261 seconds" do
    human_seconds = HumanSeconds.parse('2h1m1s')
    assert_equal 7261, human_seconds.to_i
  end

  it "can parse '49h1m1s' to an instance with 176461 seconds" do
    human_seconds = HumanSeconds.parse('49h1m1s')
    assert_equal 176461, human_seconds.to_i
  end

  it "raises an ArgumentError exception if given something unparseable" do
    assert_raises(ArgumentError) { HumanSeconds.parse('1zl1k2j3z') }
  end
end
