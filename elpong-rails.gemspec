$:.push File.expand_path("../lib", __FILE__)

require 'elpong/rails/version'

Gem::Specification.new do |s|
  s.name        = 'elpong-rails'
  s.version     = Elpong::Rails::VERSION
  s.authors     = ['Hans Otto Wirtz']
  s.email       = ['hansottowirtz@gmail.com']
  s.homepage    = 'https://github.com/hansottowirtz/elpong-rails'
  s.summary     = 'Elpong for Rails'
  s.license     = 'MIT'

  s.files = Dir['lib/**/*', 'LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '>= 3.0.0'
  s.add_dependency 'elpong', '~> 0.2', '>= 0.2.1'
end
