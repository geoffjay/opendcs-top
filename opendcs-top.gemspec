# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'opendcs/top/version'

Gem::Specification.new do |spec|
  spec.name          = "opendcs-top"
  spec.version       = DCS::Top::VERSION
  spec.authors       = ["Geoff Johnson"]
  spec.email         = ["geoff.jay@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  end

  spec.summary       = %q{Curses top client for OpenDCS.}
  spec.description   = %q{Curses based top client for monitoring OpenDCS applications.}
  spec.homepage      = "https://github.com/geoffjay/opendcs-top"
  spec.license       = "GPLv3"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "opendcs", "~> 0.1.0"
  spec.add_dependency "thor", "~> 0.18"
  spec.add_dependency "curses", "~> 1.0.1"

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
