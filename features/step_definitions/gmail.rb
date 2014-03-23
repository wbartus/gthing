Given(/^I am on Gmail page$/) do
  @browser.goto "www.gmail.com"
end

Given(/^I am not logged$/) do
  @browser.select_list(:id => 'lang-chooser').option(:value =>'en').select
  @browser.h2(:class => 'hidden-small').text.should == 'Sign in to continue to Gmail' 
end

When(/^I log to my account$/) do
  @browser.text_field(:id => "Email").set "bartosz.wezgraj@mobica.com"
  @browser.text_field(:id => "Passwd").set "punkrocker77"
  @browser.button(:id => "signIn").click
end

Then(/^I should be redirected to Inbox$/) do
  @browser.link(:title => "Inbox").wait_until_present
  @browser.link(:title => "bartosz.wezgraj@mobica.com").exists?.should == true
end