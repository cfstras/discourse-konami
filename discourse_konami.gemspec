# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'discourse_konami/version'

Gem::Specification.new do |spec|
  spec.name          = "discourse_konami"
  spec.version       = DiscourseKonami::VERSION
  spec.authors       = ["Claus Strasburger"]
  spec.email         = ["claus@strasburger.de"]
  spec.description   = %q{This gem adds the Konami Code to Discourse}
  spec.summary       = %q{When invoked, magic happens.}
  spec.homepage      = "https://github.com/cfstras/discourse-konami"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
