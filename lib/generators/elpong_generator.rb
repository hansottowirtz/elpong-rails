class ElpongGenerator < Rails::Generators::Base
  desc 'This generator creates an initializer file at config/initializers'
  def create_initializer_file
    create_file 'config/initializers/elpong.rb', <<-'RUBY' # no interpolation of Rails.root
scheme = Elpong::Scheme.new("#{Rails.root}/config/scheme.json")

if Rails.env.development?
  listener = Listen.to("#{Rails.root}/config", only: /^scheme.json$/) do
    scheme.reload
  end
  listener.start
end
    RUBY
  end
end
