class HomePage

  attr_reader :browser

  PAGE_TITLE = 'imalittletester – Testing.'
  COMICS_LINK = {id: 'menu-item-2008'}

  def initialize(browser)
    @browser = browser
  end

  def is_displayed?
    browser.title.include?(PAGE_TITLE)
  end

  def click_comics_link
    browser.find_element(COMICS_LINK).click
  end

end