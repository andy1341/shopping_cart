require 'capybara/rails'
require 'capybara/rspec'
require 'capybara/poltergeist'
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end
Capybara.javascript_driver = :poltergeist
# Capybara.javascript_driver = :selenium
