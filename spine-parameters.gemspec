lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spine/parameters/version'

Gem::Specification.new do |spec|
  spec.name          = "spine-parameters"
  spec.version       = Spine::Parameters::VERSION
  spec.authors       = ["TOGGL LLC"]
  spec.email         = ["support@toggl.com"]
  spec.summary       = 'Parameters validation and coversion.'
  spec.description   = ''
  spec.homepage      = 'https://github.com/rspine/parameters'
  spec.license       = 'BSD-3-Clause'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'spine-symbolize', "~> 0.1"

  spec.add_development_dependency 'bundler', "~> 1.10"
  spec.add_development_dependency 'rake', "~> 10.0"
  spec.add_development_dependency 'rspec', "~> 3"
  spec.add_development_dependency 'codeclimate-test-reporter', "~> 0.4"
end
