
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "gleam/version"

Gem::Specification.new do |spec|
  spec.name          = "gleam"
  spec.version       = Gleam::VERSION
  spec.authors       = ["RPC"]
  spec.email         = ["rpc@bewitching.me"]

  spec.summary       = %q{A toolkit for building data and content management systems}
  spec.description   = %q{Gleam aims to be a toolkit for building data and content management systems for Ruby.}
  spec.homepage      = "https://github.com/bewitchingme"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 0.63"

  spec.add_runtime_dependency "trailblazer", "~> 2.1.0.rc1"
end
