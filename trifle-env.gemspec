require_relative 'lib/trifle/env/version'

Gem::Specification.new do |spec|
  spec.name          = "trifle-env"
  spec.version       = Trifle::Env::VERSION
  spec.authors       = ["Jozef Vaclavik"]
  spec.email         = ["jozef@hey.com"]

  spec.summary       = 'Simple Env store backed by Redis, Postgres, etc.'
  spec.description   = 'Trifle::Env is a way too simple Env store that'\
                        'encrypts your variables at rest'
  spec.homepage      = 'https://trifle.io'
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/trifle-io/trifle-env'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency('bundler', '~> 2.1')
  spec.add_development_dependency('byebug', '>= 0')
  spec.add_development_dependency('rake', '~> 13.0')
  spec.add_development_dependency('rspec', '~> 3.2')
  spec.add_development_dependency('rubocop', '1.0.0')
end
