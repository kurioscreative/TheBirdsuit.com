source 'http://rubygems.org'

gem 'rails', '3.0.5'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

# Use unicorn as the web server
 gem 'unicorn'

# Deploy with Capistrano
 gem 'capistrano'
#gem "jammit"

#API and Libraries


#Authentication Gems
gem "devise"

#Model Gems
gem "friendly_id", "~> 3.2.1"
gem "activemerchant", "~> 1.9.4", :require => "active_merchant"

#Presentation Gems
gem "haml-rails" #https://github.com/indirect/haml-rails
gem "jquery-rails" #https://github.com/indirect/jquery-rails
gem "formtastic", "~>1.1.0"
gem 'crumble', :require => "breadcrumb"
gem 'will_paginate', '3.0.pre2' #Pagination
gem 'compass'
gem 'aasm'
gem "nbrew-country_select", :require => "country_select"

group :production do
  gem 'hassle', :git => 'git://github.com/Papipo/hassle.git'
end

#Development Gems
group :development do
  gem 'annotate-models', '1.0.4'
  gem 'hpricot'
  gem 'ruby_parser'
end


#Testing Gems
  group :development, :test do
    gem "ZenTest", "~> 4.4.2"
    gem "autotest-rails", "~> 4.1.0"
    gem 'rspec-rails', '~>2.5'
    gem 'capybara'
    gem 'faker', '~>0.3.1'
    gem 'factory_girl_rails', '>=1.0'
    gem "cucumber-rails", ">= 0.3.2"
    gem "shoulda-matchers"
    gem "database_cleaner", "0.6.7.RC"
  end