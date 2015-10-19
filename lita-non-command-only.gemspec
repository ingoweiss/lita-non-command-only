Gem::Specification.new do |spec|
  spec.name          = "lita-non-command-only"
  spec.version       = "0.1.0"
  spec.authors       = ["Ingo Weiss"]
  spec.email         = ["ingo@ingoweiss.com"]
  spec.description   = "Adds :non_command_only option to routes which causes them to match only when not invoked as a command"
  spec.summary       = "Adds :non_command_only option to routes which causes them to match only when not invoked as a command"
  spec.homepage      = "https://github.com/ingoweiss/lita-non-command-only"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "extension" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.6"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
end
