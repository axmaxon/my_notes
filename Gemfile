source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.1'

gem 'bootsnap', require: false
gem 'cssbundling-rails'
gem 'devise', '~> 4.9', '>= 4.9.2'
gem 'devise-bootstrap5'
gem 'devise-i18n'
gem 'dotenv-rails', '~> 2.8', '>= 2.8.1'
gem 'jbuilder'
gem 'jsbundling-rails'
gem 'pagy', '~> 6.0', '>= 6.0.3'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.4', '>= 7.0.4.3'
gem 'redis', '~> 4.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails', '~> 1.4'

# Placed in this section to create demo data in a production environment
gem 'factory_bot', '~> 6.2', '>= 6.2.1'
gem 'ffaker', '~> 2.21'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 6.0.0'
end

group :development do
  gem 'rubocop', '~> 1.53'
  gem 'rubocop-performance', '~> 1.18'
  gem 'rubocop-rails', '~> 2.20', '>= 2.20.2'
  gem 'rubocop-rspec', '~> 2.22'
  gem 'web-console'
end
