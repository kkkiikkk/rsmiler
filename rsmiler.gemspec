# frozen_string_literal: true

require_relative "lib/rsmiler/version"

Gem::Specification.new do |spec|
  spec.name = "rsmiler"
  spec.version = Rsmiler::VERSION
  spec.authors = ["kkkiikkk"]
  spec.email = ["ruddnovskiy@gmail.com"]

  spec.summary = 'A gem to monitor Rails commands and print "text" after execution'
  spec.description   = 'This gem monitors Rails commands and prints "text" after each execution.'
  spec.homepage      = "http://example.com/rails_monitor"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*", "bin/*", "README.md"]
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", "~> 7.0"
  spec.executables = ["rsmiler"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
