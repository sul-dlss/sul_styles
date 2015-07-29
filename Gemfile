source 'https://rubygems.org'

# Specify your gem's dependencies in sul_styles.gemspec
gemspec

# the below comes from engine_cart, a gem used to test this Rails engine gem in the context of a Rails app
file = File.expand_path('Gemfile', ENV['ENGINE_CART_DESTINATION'] || ENV['RAILS_ROOT'] || File.expand_path('../spec/internal', __FILE__))
if File.exist?(file)
  puts 'Loading #{file} ...' if $DEBUG # `ruby -d` or `bundle -v`
  instance_eval File.read(file)
else
  # we get here when we haven't yet generated the testing app via engine_cart
  gem 'rails', ENV['RAILS_VERSION'] if ENV['RAILS_VERSION']

  if ENV['RAILS_VERSION'] && ENV['RAILS_VERSION'] =~ /^4.2/
    gem 'responders', '~> 2.0'
    gem 'sass-rails', '>= 5.0'
  else
    gem 'sass-rails', '< 5.0'
  end
end
