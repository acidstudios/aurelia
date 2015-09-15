# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'aurelia/version'

Gem::Specification.new do |spec|
  spec.name          = "aurelia"
  spec.version       = Aurelia::VERSION
  spec.authors       = ["Gustavo Barrientos"]
  spec.email         = ["gustavo.barrientos@acidstudios.me"]

  spec.summary       = "Integrate Aurelia.io in your Rails project"
  spec.description   = "Integrate Aurelia.io in your Rails project."
  spec.homepage      = "http://www.github.com/acidstudios/aurelia"
  spec.license       = "MIT"

  spec.required_ruby_version     = '>= 2.2.2'
  spec.required_rubygems_version = '>= 1.8.11'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rails", "4.2.4"
end
