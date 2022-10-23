# frozen_string_literal: true
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'


gem 'bootsnap',        '1.12.0', require: false
gem 'importmap-rails', '1.1.0'
gem 'jbuilder',        '2.11.5'
gem 'pg'
gem 'puma',            '5.6.4'
gem 'rails',           '7.0.4'
gem "bootstrap-sass"
gem 'sassc-rails',     '2.1.2'
gem 'sprockets-rails', '3.4.2'
gem 'stimulus-rails',  '1.0.4'
gem 'turbo-rails',     '1.1.1'
gem 'devise'
gem 'cancancan'
gem 'activeadmin'
gem 'cloudinary'

group :development, :test do
  gem 'debug', '1.5.0', platforms: %i[ mri mingw x64_mingw ]
  gem 'rubocop'
  gem 'rspec-rails'
end

group :development do
  gem 'web-console', '4.2.0'
end

group :test do
  gem 'capybara',                 '3.37.1'
  gem 'guard',                    '2.18.0'
  gem 'guard-minitest',           '2.4.6'
  gem 'minitest',                 '5.15.0'
  gem 'minitest-reporters',       '1.5.0'
  gem 'rails-controller-testing', '1.0.5'
  gem 'selenium-webdriver',       '4.2.0'
  gem 'webdrivers',               '5.0.0'
end

