
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "horoscope_reader/version"

Gem::Specification.new do |spec|
  spec.name          = "horoscope_reader"
  spec.version       = HoroscopeReader::VERSION
  spec.authors       = ["Renee Nordholm"]
  spec.email         = ["reneenordholm@gmail.com"]

  spec.summary       = %q{Horoscope Reader displays today's horoscope.}
  spec.description   = %q{Horoscope Reader is a CI that scrapes data from Horoscope.com to present the user's selected horoscope.}
  spec.homepage      = "https://github.com/reneenordholm/horoscope_reader"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://github.com/reneenordholm/horoscope_reader"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/reneenordholm/horoscope_reader"
    spec.metadata["changelog_uri"] = "https://github.com/reneenordholm/horoscope_reader/blob/master/lib/horoscopes/version.rb"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri", "~> 1.6"
end
