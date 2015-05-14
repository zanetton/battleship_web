Given(/^I am on the game page$/) do
  visit '/game'
end

When(/^I press begin$/) do
  click_button 'Lets Begin'
end

Then(/^all my ships are placed$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
