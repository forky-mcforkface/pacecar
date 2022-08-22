# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'pacecar/version'

Gem::Specification.new do |s|
  s.name          = 'pacecar'
  s.version       = Pacecar::VERSION.dup
  s.platform      = Gem::Platform::RUBY
  s.authors       = ['Matt Jankowski', 'Gabe Berke-Williams', 'Chad Pytel', 'Ryan McGeary', 'Mike Burns', 'Ryan Sonnek', 'Thomas Dippel', 'Tristan Dunn']
  s.email         = 'support@thoughtbot.com'
  s.homepage      = 'http://github.com/thoughtbot/pacecar'
  s.summary       = 'Pacecar adds scope methods to ActiveRecord classes via database column introspection.'
  s.description   = 'Generated scopes for ActiveRecord classes.'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency('activerecord', '>= 4', '< 8')

  s.add_development_dependency('appraisal', '~> 1.0')
  s.add_development_dependency('rspec-rails', '~> 3.1')
  s.add_development_dependency('factory_girl_rails', '~> 4.5')
end
