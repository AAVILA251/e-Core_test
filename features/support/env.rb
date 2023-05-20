require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://automation-sandbox-python-mpywqjbdza-uc.a.run.app/'
  Capybara.default_max_wait_time = 30
end

Capybara.default_driver = :selenium_chrome
