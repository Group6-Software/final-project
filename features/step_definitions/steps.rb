When(/^I go to the homepage$/) do
  visit root_path
end

Then(/^I should see the welcome message$/) do
  expect(page).to have_content("Welcome to Haji Sons Portal")
end

Given /^I am on the home page$/ do
  visit root_path
end

Then /^I should see "([^"]*)" in a link$/ do |text|
  page.should have_link text
end


Given /^I am on "([^"]*)"$/ do |path|
  visit path
end

When /^I fill in "([^"]*)" with "([^"]*)"$/ do |element, text|
  fill_in element, with: text
end
 
Then(/^I should see "([^"]*)"$/) do |arg1|
    expect(page).to have_content(arg1)
end 
 
When /^I click "([^"]*)"$/ do |element|
  click_on element
end