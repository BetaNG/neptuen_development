source 'http://ruby.taobao.org/'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use mysql as the database for Active Record
gem 'mysql2'

group :assets do
  	# Use SCSS for stylesheets
	gem 'sass-rails', '~> 4.0.0'
	# Use Uglifier as compressor for JavaScript assets
	gem 'uglifier', '>= 1.3.0'
	# Use CoffeeScript for .js.coffee assets and views
	gem 'coffee-rails', '~> 4.0.0'
	# See https://github.com/sstephenson/execjs#readme for more supported runtimes
	gem 'therubyracer', platforms: :ruby
end

group :development do
	gem 'quiet_assets'
	gem "better_errors", ">= 0.7.2"
	gem "binding_of_caller", ">= 0.7.1", platforms: [:mri_19, :rbx]
	gem "hub", ">= 1.10.2", require: nil
end

group :development, :test do
	gem "rspec-rails", ">= 2.12.2"
	gem "database_cleaner", ">= 1.0.0.RC1"
	gem "email_spec", ">= 1.4.0"
	gem "launchy", ">= 2.2.0"
	gem "capybara", ">= 2.0.3"
	gem "factory_girl_rails", ">= 4.2.0"
end

gem 'jquery-rails'
gem "cancan"
gem "thin"
gem 'devise', '~> 3.0.0.rc'
gem "will_paginate"

# API
gem 'grape'
gem 'grape-swagger'

# 上传组件
gem 'carrierwave'
gem "carrierwave-upyun"
gem "rest-client"
gem 'mini_magick','3.3', :require => false

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
