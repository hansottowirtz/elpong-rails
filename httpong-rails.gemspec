$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require 'httpong/rails/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'httpong-rails'
  s.version     = HTTPong::Rails::VERSION
  s.authors     = ['Hans Otto Wirtz']
  s.email       = ['hansottowirtz@gmail.com']
  s.homepage    = 'https://github.com/hansottowirtz/httpong-rails'
  s.summary     = 'HTTPong for Rails'
  # s.description = 'Description of HTTPong::Rails.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '>= 3.0.0'
  s.add_dependency 'httpong', '>= 0.1.0'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'jbuilder'
end
