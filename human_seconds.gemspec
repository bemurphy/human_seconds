# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'human_seconds/version'

Gem::Specification.new do |spec|
  spec.name          = "human_seconds"
  spec.version       = HumanSeconds::VERSION
  spec.authors       = ["Brendon Murphy"]
  spec.email         = ["xternal1+github@gmail.com"]
  spec.summary       = %q{Converts seconds like 7261 into a human readable string '2h1m1s'}
  spec.description   = spec.summary
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 5.4.0"
end
