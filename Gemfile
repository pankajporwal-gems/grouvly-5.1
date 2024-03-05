source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.5.2'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.5'
# Use sqlite3 as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
gem 'therubyracer', platforms: :ruby
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Country gem
gem 'carmen-rails'

# Model related gems
gem 'omniauth'
gem 'omniauth-facebook', '4.0.0'
gem 'omniauth-google-oauth2'
gem 'omniauth-openid'
gem 'koala'
gem 'statesman'
gem 'kaminari'
gem 'active_model_serializers'
gem 'paper_trail', '~> 9.0.0'
gem 'friendly_id', '~> 5.1.0'
gem 'date_validator'

# Payment related gems
gem 'braintree'

# Assets and template related gems
gem 'jquery-rails'
gem 'slim'
gem 'font-awesome-sass', '4.7.0'
gem 'i18n-js', '<= 4.0.1'
# gem 'asset_sync'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Geolocation
gem 'geoip'
gem 'geocoder'

# Others
gem 'dotenv-rails'
gem 'chronic'
gem 'honeybadger'
gem 'open4'
# gem 'curb'
gem 'gon'
gem 'humanize_boolean'

# Analytics
# gem 'analytics-ruby', git: 'git@github.com:segmentio/analytics-ruby.git'
gem 'referer-parser', '~> 0.3.0'

# For dummy data
gem 'faker'

# Others
# gem 'rack-reverse-proxy', require: 'rack/reverse_proxy'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'libnotify'
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'database_cleaner'
  gem 'simplecov', require: false
  gem 'fabrication'
  gem 'bullet'
  gem 'rr'
  gem 'poltergeist'
  gem 'launchy'
  
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'awesome_print'
  gem 'hirb'
  gem 'better_errors'
  gem 'meta_request', '0.7.2'
  gem 'letter_opener'
  gem 'letter_opener_web', '~> 1.2.0'
  gem 'priscilla'

  gem 'pry'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
