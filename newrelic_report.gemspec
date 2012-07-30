# -*- encoding: utf-8 -*-
require File.expand_path('../lib/newrelic_report/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chamnap"]
  gem.email         = ["chamnapchhorn@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "newrelic_report"
  gem.require_paths = ["lib"]
  gem.version       = NewrelicReport::VERSION
  
  gem.add_development_dependency "rspec"
  
  gem.add_dependency "activeresource"
  gem.add_dependency "newrelic_api"
  gem.add_dependency "haml"
end
