require 'capybara'
require 'capybara/dsl'
require 'site_prism'

class GeneralPage < SitePrism::Page
  include Capybara::DSL

  def switch_to_last_window
    window_handles = page.driver.browser.window_handles
    page.driver.browser.switch_to.window(window_handles.last)
  end
end

