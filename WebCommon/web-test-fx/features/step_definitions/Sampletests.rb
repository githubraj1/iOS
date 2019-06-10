performuseractions = BrowserActions::Functions.new

Given(/^I launch the website$/) do
  launchingbrowser = Browserlaunchconfiguration.new
  launchingbrowser.validate
end

Then(/^I print the url$/) do
  performuseractions.printurl
end


When(/^element with identifier "([^"]*)" is asserted$/) do |arg|
  performuseractions.verify_element_with_id_present?(arg)
end

Then(/^element with identifier "([^"]*)" is clicked$/) do |arg|
  performuseractions.click_on_element_with_id(arg)
end


And(/^element with text "([^"]*)" is asserted$/) do |arg|
  performuseractions.verify_text(arg)
end

When(/^element with text "([^"]*)" is clicked$/) do |arg|
  performuseractions.click_on_element_with_text(arg)
end

And(/^wait for element with identifier "([^"]*)" to be present$/) do |arg|
  performuseractions.wait_until_element_present_id(arg)
end

And(/^wait for element with text "([^"]*)" to be present$/) do |arg|
  performuseractions.wait_until_element_present_text(arg)
end

And(/^I wait for the page to load$/) do
  sleep 5
end


And(/^I click element with id "([^"]*)" is opened in new tab$/) do |arg|
  performuseractions.click_element_with_id_newtab(arg)
end

Then(/^I click element with id "([^"]*)" is opened in new window$/) do |arg|
  performuseractions.click_element_with_id_newwindow(arg)
end

Then(/^I switch to new tab with name "([^"]*)"$/) do |arg|
  performuseractions.switch_newtab_name(arg)
end

And(/^website with url "([^"]*)" is launched$/) do |arg|
  performuseractions.website_url_launch(arg)
end

And(/^text "([^"]*)" is entered in the identifier "([^"]*)"$/) do |arg1, arg2|
  performuseractions.enter_text_with_id(arg2,arg1)
end

Then(/^I assert to text "([^"]*)"$/) do |arg|
  performuseractions.verify_text(arg)
end

Then(/^I click element with text "([^"]*)" is opened in new window$/) do |arg|
  performuseractions.click_element_with_text_newwindow(arg)
end

And(/^I click element with text "([^"]*)" is opened in new tab$/) do |arg|
  performuseractions.click_element_with_text_newtab(arg)
end

Then(/^I switch to previous tab$/) do
  performuseractions.switch_previoustab
end

Then(/^I switch to next tab$/) do
  performuseractions.switch_nexttab
end

And(/^text "([^"]*)" is entered in the text attribute "([^"]*)"$/) do |arg1, arg2|
  performuseractions.enter_text_with_text(arg2,arg1)
end

Then(/^text "([^"]*)" is entered using class attribute "([^"]*)"$/) do |arg1, arg2|
  performuseractions.enter_text_with_class(arg2,arg1)
end

And(/^element "([^"]*)" is clicked using div class attribute$/) do |arg|
  performuseractions.click_element_with_div_class(arg)
end

Then(/^element "([^"]*)" is clicked using span class attribute$/) do |arg|
  performuseractions.click_element_with_span_class(arg)
end
