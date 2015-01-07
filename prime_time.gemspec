# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prime_time/version'

Gem::Specification.new do |spec|
  spec.name          = "prime_time"
  spec.version       = PrimeTime::VERSION
  spec.authors       = ["Dru Ibarra"]
  spec.email         = ["Druwerd@gmail.com"]
  spec.summary       = %q{Prints out a multiplication table of prime numbers}
  spec.description   = %q{Command line program that prints out a table of primes with each cell containing the product of the primes.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1"
end
