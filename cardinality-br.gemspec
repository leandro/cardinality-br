# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'brazilian_cardinality/version'

Gem::Specification.new do |spec|
  spec.name          = "cardinality-br"
  spec.version       = BrazilianCardinality::VERSION.dup
  spec.authors       = ["Leandro Nascimento Camargo"]
  spec.email         = ["leandroico@gmail.com"]

  spec.summary       = %q{Cardinal expression of a number in brazilian language}
  spec.description   = %q{Cardinal expression of a number in brazilian language}
  spec.homepage      = "https://github.com/leandro/cardinality-br"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.test_files    = `git ls-files -- test/*`.split("\n")
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.1.0'

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
