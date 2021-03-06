source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails',                            '~> 5.1.4'

# Use PostgreSQL as the database for Active Record
gem 'pg',                               '~> 0.21.0'

# Use Puma as the app server
gem 'puma',                             '~> 3.0'

# Use SCSS for stylesheets
gem 'sass-rails',                       '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier',                         '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails',                     '~> 4.2'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes navigating your web application faster
gem 'turbolinks',                       '~> 5'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder',                         '~> 2.5'

# Additional gems
gem 'awesome_print'
gem 'country_select'
gem 'devise',                           '~> 4.3.0'
gem 'devise_invitable',                 '~> 1.7.0'
gem 'gettext_i18n_rails',               '~> 1.8.0'
gem 'simple_form',                      '~> 3.5.0'
gem 'slim',                             '~> 3.0.0'


group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger
  # console
  gem 'byebug', platform: :mri
  gem 'dotenv-rails'
end

group :development do
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'listen',                         '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the
  # background
  gem 'spring'
  gem 'spring-watcher-listen',          '~> 2.0.0'
  # gettext and ruby_parser required for FastGettext
  gem 'gettext', '>=3.0.2', require: false
  gem 'ruby_parser', require: false
  # Access an IRB console on exception pages or by using <%= console %>
  # anywhere in the code
  gem 'web-console',                    '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
