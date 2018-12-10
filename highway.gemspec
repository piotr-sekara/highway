#
# Gemfile
# Copyright © 2018 Netguru S.A. All rights reserved.
#

require_relative "lib/highway/version"

Gem::Specification.new do |spec|

  # Metadata

  spec.name = "highway"
  spec.version = Highway::VERSION
  spec.summary = "Build system on top of Fastlane."
  spec.homepage = "https://github.com/netguru/highway"

  spec.author = "Netguru"
  spec.license = "MIT"

  # Sources

  spec.files = Dir['lib/**/*.rb']

  # Dependencies

  spec.add_dependency "fastlane"

end