source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.1"

gem "rails", "~> 7.0.4", ">= 7.0.4.3"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "jsbundling-rails"
gem 'turbo-rails', '~> 1.4'
gem "stimulus-rails"
gem "cssbundling-rails"
gem "jbuilder"
gem "redis", "~> 4.0"
gem "bootsnap", require: false
gem 'dotenv-rails', '~> 2.8', '>= 2.8.1'
gem 'pagy', '~> 6.0', '>= 6.0.3'
gem 'devise', '~> 4.9', '>= 4.9.2'
gem "devise-i18n"
gem "devise-bootstrap5"
gem "ffaker", "~> 2.21"
gem "factory_bot", "~> 6.2", ">= 6.2.1"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails", "~> 6.0.0"
end

group :development do
  gem "web-console"
end
