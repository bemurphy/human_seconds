# HumanSeconds

Converts seconds like 7261 into a human readable string '2h1m1s'.

Also can parse that format back to integer seconds.

## Installation

Add this line to your application's Gemfile:

    gem 'human_seconds'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install human_seconds

## Usage

```ruby
hs = HumanSeconds.new(61)
hs.to_i #=> 61
hs.to_s #=> 1m1s

HumanSeconds.parse('1m1s').to_i # => 61
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/human_seconds/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
