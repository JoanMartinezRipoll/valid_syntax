# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'valid_syntax/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = ">= 2.0"
  spec.name          = "valid_syntax"
  spec.version       = ValidSyntax::VERSION
  spec.authors       = ["Joan"]
  spec.email         = ["joan.martinez@hitfoxgroup.com"]

  spec.summary       = %q{Check and store syntax errors or ruby code without executing it}
  spec.description   = <<-HERE
  valid_syntax checks if a string containing ruby code has any syntax errors. If this is
  the case, the syntax errors will be stored to be later accessed.
  HERE
  spec.homepage      = "https://github.com/JoanMartinezRipoll/valid_syntax"
  spec.license = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency  'rails', ValidSyntax::RAILS_VERSION

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
