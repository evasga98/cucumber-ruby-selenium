require 'selenium-webdriver'

Before do 
  @browser = Selenium::WebDriver.for :chrome
  @browser.manage.timeouts.implicit_wait = 10

  # @browser.navigate.to 'https://www.amazon.com/?language=en_US'
  @browser.navigate.to 'https://imalittletester.com/'
  @browser.manage.window.maximize
end

After do 
  @browser.quit
end
