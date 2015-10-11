$:.push File.expand_path("../lib", __FILE__)
require 'betaseries/version'

Gem::Specification.new do |s|
  s.name        = 'betaseries'
  s.version     = T411Cli::VERSION.dup
  s.date        = '2015-02-24'
  s.summary     = "Betaseries' API wrapper"
  s.description = "This gem is a Betaseries' API wrapper. It allows to flag episodes as watched, downloaded, ..."
  s.authors     = ["Nicolas Collard"]
  s.email       = 'niko@hito.be'
  s.homepage    = 'https://github.com/Hito01/betaseries'
  s.license     = 'MIT'

  s.files       = `git ls-files`.split($\)

  s.add_dependency 'httparty'

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
end
