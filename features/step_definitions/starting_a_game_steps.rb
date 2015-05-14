Given(/^I am on the homepage$/) do
  visit '/'
end

Given(/^I enter my name, "([^"]*)"$/) do |name|
  fill_in 'name', with: name
end

When(/^I press submit$/) do
  click_button 'GO!'
end

Then(/^I see a grid$/) do
  expect(page).to have_selector ".grid"
end

Then(/^I see my name, "([^"]*)"$/) do |name|
  expect(page).to have_content(name)
end

When(/^I fill in "([^"]*)" with empty space "([^"]*)"$/) do |name, balls|
 fill_in('name', :with => '')
end

Then(/^I should see "([^"]*)"$/) do |name|
expect(page).to have_content(name)
end
