require 'Capybara'
require 'Capybara/cucumber'
require 'selenium-webdriver'
require 'rspec/expectations'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

