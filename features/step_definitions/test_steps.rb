
Given('The user is in the Home page of imalittletester') do
    @home_page = HomePage.new(@browser)
    expect(@home_page.is_displayed?).to eql(true)
end

When('User clicks on the link The little tester Comics') do
    @home_page.click_comics_link
end

Then('The user should be redirected to the Comics page') do
    @comics_page = ComicsPage.new(@browser)
    expect(@comics_page.is_displayed?).to eql(true)
end