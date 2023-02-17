# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "hima"
  spec.version       = "1.1.6"
  spec.authors       = ["Brandon Cardoso"]
  spec.summary       = "A simple Jekyll theme with a focus on accessibility."
  spec.homepage      = "https://www.github.com/brandoncardoso/hima"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_data|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.9.2"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.8"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.15.1"
end
