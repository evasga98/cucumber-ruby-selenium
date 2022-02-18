class ComicsPage

    attr_reader :browser
  
    PAGE_TITLE_LOC = {class: 'page-title'}
    PAGE_TITLE = 'Category: comics'

    def initialize(browser)
        @browser = browser
      end
  
    def is_displayed?
        browser.find_element(PAGE_TITLE_LOC).displayed?
        is_comics_page?
    end

    def is_comics_page?
        browser.find_element(PAGE_TITLE_LOC).text.include?(PAGE_TITLE)
    end

end