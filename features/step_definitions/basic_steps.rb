def path_to(page_name)
  name = page_name.downcase
  case name
  when 'landing' then
    root_path
  when 'user_sign_up' then
    new_user_registration_path
  else
    fail('Path to the specified is not listed in #path_to')
  end
end

# Given(/^I am on the "(.*?)" page$/) do |page|
When(/^I (?:go to|am on) the "([^"]*)" page$/) do |page|
  visit path_to(page)
end

When(/^(?:when I|I) click "([^"]*)"$/) do |text|
  click_link_or_button text
end

Then(/^show me the page$/) do
  save_and_open_page
end

Then(/^I should be on the User registration page$/) do
  expect(current_path).to eq path_to('user_sign_up')
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, value|
  fill_in field, with: value
end
