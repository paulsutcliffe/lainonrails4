source 'https://rubygems.org'


gem 'rails', '4.1.1'
gem 'mysql2'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
# gem 'therubyracer',  platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

gem "unicorn"

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem "cancan"
gem "scaffold-bootstrap3"
gem "bootstrap-sass", "~> 3.1.1.1"
gem "compass-rails", group: :assets
gem "rails_layout", group: :development
gem "rvm-capistrano"
gem "haml"
gem "inherited_resources"
gem "page_title_helper"
gem "friendly_id", "~> 5.0.0"
gem "devise"
gem "mini_magick"
gem "carrierwave"
gem "capybara", "~> 2.2.1", group: :test
gem "launchy", "~> 2.4.2", group: :test
gem "rspec-rails", "~> 3.0.0.beta", group: [:test, :development]
gem "factory_girl_rails", "~> 4.3.0", group: [:test, :development]
gem 'selenium-webdriver'
gem 'magnific-popup-rails'
gem 'masonry-rails'

gem 'rolify'
gem "simple_form"
gem "ckeditor"
gem 'kaminari'
gem 'faker', '~> 1.3.0'
gem "binding_of_caller"
gem "geocoder"
gem "httparty"
gem 'jquery-turbolinks'
gem 'truncate_html'

group :development, :test do
  gem 'thin'
end

gem 'capistrano', '~> 3.2.1', require: false, group: :development
gem 'rake'
gem 'capistrano-maintenance', github: "capistrano/capistrano-maintenance", require: false

group :development do
  gem 'better_errors'
  gem 'quiet_assets'
  gem 'capistrano3-unicorn'
  gem 'capistrano-rvm',   '~> 0.1.1', require: false
  gem 'capistrano-rails',   '~> 1.1.1', require: false
  gem 'capistrano-bundler', '~> 1.1.2', require: false
end

group :test do
    gem 'cucumber-rails', :require => false
    # database_cleaner is not required, but highly recommended
    gem 'database_cleaner'
end
