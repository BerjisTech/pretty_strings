# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pretty_strings/version'

Gem::Specification.new do |spec|
  spec.name          = "pretty_strings"
  spec.version       = PrettyStrings::VERSION
  spec.authors       = ["Kevin S. Dias"]
  spec.email         = ["diasks2@gmail.com"]

  spec.summary       = %q{Take strings that have been abused in the wild and clean them up (for translation tools)}
  spec.description   = %q{Clean up strings (html entities, html/xml code, unnecessary whitespace, etc.) to prep them to be better searched or analyzed.}
  spec.homepage      = "https://github.com/diasks2/pretty_strings"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
