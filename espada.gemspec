require_relative 'lib/espada/version'

Gem::Specification.new do |spec|
  spec.name          = "espada"
  spec.version       = Espada::VERSION
  spec.authors       = ["Allan Davis"]
  spec.email         = ["cajun.code@gmail.com"]

  spec.summary       = %q{C++ Project and File generators}
  spec.description   = %q{C++ Development can be a pain. Project setup is dependent on the tools used in the project and the developer.  This tool is a command line tool for generating project and files independent of any ide or editor.}
  spec.homepage      = "https://github.com/cajun-code/espada.rb"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  #spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/cajun-code/espada.rb"
  spec.metadata["changelog_uri"] = "https://github.com/cajun-code/espada.rb"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'thor', '~> 1.0', '>= 1.0.1'
end
