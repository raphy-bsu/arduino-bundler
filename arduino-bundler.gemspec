# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arduino/bundler/version'

Gem::Specification.new do |spec|
  spec.name          = "arduino-bundler"
  spec.version       = Arduino::Bundler::VERSION
  spec.authors       = ["Oleg Orlov"]
  spec.email         = ["orelcokolov@gmail.com"]
  spec.summary       = "Simple library manager for Arduino (and other boards)"
  spec.description   = "Simple library manager for Arduino (and other boards)"
  spec.homepage      = "http://raphy-bsu.github.io/arduino-bundler/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
