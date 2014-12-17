# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zipang/version'

Gem::Specification.new do |spec|
  spec.name          = "zipang"
  spec.version       = Zipang::VERSION
  spec.authors       = ["kozo yamagata"]
  spec.email         = ["tune002@gmail.com"]
  spec.summary       = %q{Convert to alphabet slug from japanese}
  spec.description   = %q{Convert to alphabet slug from japanese}
  spec.homepage      = "https://github.com/halenohi/zipang"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "romaji"
  spec.add_dependency "kuromoji"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
