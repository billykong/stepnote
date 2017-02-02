source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'activerecord-postgis-adapter', '~> 4.0.0'
gem 'bootstrap', '~> 4.0.0.alpha3'
gem 'devise', '~> 4.2.0'
gem 'doorkeeper', '~> 4.0.0'
gem 'doorkeeper-jwt'
gem 'active_model_serializers', '~> 0.10.2'
gem 'friendly_id'
gem 'auto_strip_attributes'
gem 'sidekiq'
gem 'sidekiq-failures'
gem 'sidekiq-cron'
gem 'sidekiq-unique-jobs'
gem 'oauth2'
gem "strip_attributes"
# gem 'acts_as_paranoid'
gem 'global_phone'
gem 'geocoder'
gem 'dbscan'
gem 'hashie'
gem 'will_paginate'
gem 'api-pagination'
gem 'aws-sdk'
gem 'gcm'
gem 'lograge'
gem 'logstash-event'
gem 'exception_notification'
gem 'yard'
gem 'asset_sync'
gem 'font-awesome-sass'
gem 'http_accept_language'
gem 'maxminddb'
gem 'clipboard-rails'
gem 'email_validator'
gem 'amplitude-api'
gem 'split', require: 'split/dashboard'
gem 'sinatra', require: false, git: 'https://github.com/sinatra/sinatra'
gem 'foreman', group: :development
gem 'rerun', group: :development
gem 'bugsnag'
gem 'rack-ssl-enforcer'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'faker'
  gem 'rspec-rails', '~> 3.5.0.beta2'
  gem 'factory_girl_rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'guard-rspec', require: false
  gem 'terminal-notifier-guard'
  gem 'global_phone_dbgen'
end

group :test do
  gem 'webmock'
  gem 'rails-controller-testing'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
