source 'https://rubygems.org'
ruby "2.2.3"


gem 'rails', '4.2.4'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder'
gem 'bootstrap-sass'
gem 'paperclip'
gem 'aws-sdk-v1'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'devise'
#gem 'paperclip-dropbox', '>=1.1.7'
gem 'figaro'
gem 'stripe'
gem "font-awesome-rails"

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  #gem 'sqlite3'
  gem 'sqlite3',  '~>1.3.11'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'better_errors'
  gem 'binding_of_caller'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
