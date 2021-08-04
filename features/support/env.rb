require "capybara"
require "cucumber"
require "selenium-webdriver"
require "rspec"
require "capybara/cucumber"
require "faker"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 5
end