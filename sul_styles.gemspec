# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sul_styles/version'

Gem::Specification.new do |spec|
  spec.name          = 'sul_styles'
  spec.version       = SulStyles::VERSION
  spec.authors       = ['Jack Reed']
  spec.email         = ['pjreed@stanford.edu']

  spec.summary       = %q{A gem for adding Stanford University Libraries styles to Rails applications}
  spec.homepage      = 'https://github.com/sul-dlss/sul_styles'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'rails', '~> 4.1'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'engine_cart', '~> 0.7.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
