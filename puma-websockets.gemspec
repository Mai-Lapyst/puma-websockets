lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "version"

Gem::Specification.new do |spec|
  spec.name          = "puma-websockets"
  spec.version       = Puma::Websockets::VERSION
  spec.authors       = ["Jesús Burgos Maciá"]
  spec.email         = ["jburmac@gmail.com"]

  spec.summary       = "WebSocket support for Puma"
  spec.description   = "Implements Rack WebSocket specification draft"
  spec.homepage      = "https://github.com/Jesus/puma-websockets"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added
  # into git.
  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`
      .split("\x0")
      .reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_runtime_dependency 'puma', '~> 5.3.2'
  spec.add_runtime_dependency 'websocket-driver', '~> 0.7'
end
