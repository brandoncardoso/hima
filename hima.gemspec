# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "hima"
  spec.version       = "0.1.0"
  spec.authors       = ["Brandon Cardoso"]
  spec.summary       = "A simple Jekyll theme."
  spec.homepage      = "https://www.github.com/brandoncardoso/hima"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_data|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.3"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.17.0"
end
