class HttpongGenerator < Rails::Generators::Base
  desc "This generator creates an initializer file at config/initializers"
  def create_initializer_file
    create_file "config/initializers/httpong.rb", 'HTTPong::Scheme.new("#{Rails.root}/config/scheme.json")'
  end
end
