Given(/^I am on Gmail page$/) do
  visit(LoginPage)
end

And(/^I am not logged$/) do
  
  on(LoginPage).select_language_element.select_value('en')
  on(LoginPage).text.should == 'Sign in to continue to Gmail'
  
end

When(/^I log to my account$/) do
  on(LoginPage).email="bartosz.wezgraj@mobica.com"
  on(LoginPage).password="punkrocker77"
  on(LoginPage).confirm_login
end

Then(/^I should be redirected to Inbox$/) do
  #@browser.link(:title => "Inbox").wait_until_present
  #@browser.link(:title => "bartosz.wezgraj@mobica.com").exists?.should == true
end