---
title: 使用rspec
date: 2017-03-18 10:32:36
tags: [rspec]
---


rspec
<!--more-->

# DB
test
    be rake db:create:all
    be rails generate rspec:install
    rdm db:test:clone 
    be rspec

#Rspec
```ruby
group :development, :test do
  gem 'rspec-rails', "~> 3.0"
  gem 'factory_girl_rails', '~>4.2.1'
end

group :test do
  gem "faker", "~> 1.1.2"
  gem "capybara", "~> 2.2.0"
  gem "database_cleaner", "~> 1.0.1"
  gem "launchy", "~> 2.3.0"
  gem "selenium-webdriver", "~> 2.39.0"
end
```
