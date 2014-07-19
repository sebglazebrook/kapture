# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kapture/version'

Gem::Specification.new do |spec|
  spec.name          = "kapture"
  spec.version       = Kapture::VERSION
  spec.authors       = ["Seb Glazebrook"]
  spec.email         = ["me@sebglazebrook.com"]
  spec.summary       = %q{TODO: Simple string core extension to help out when working with regex capture groups.}
  spec.description   = %q{TODO: Simple string core extension to help out when working with regex capture groups. Saves checking for size or nil every time you might have a capture group.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
