Then(/^I should see details of new book$/) do
  expect(Pages::ShowBookPage).to be_current_page
end


Then(/^I should see the lendee details for the book$/) do
  expect(Pages::ShowBookPage).to be_current_page
  all(:css, '.active').any?
end

Given(/^I am on the home page$/) do
  Pages::HomePage.new.goto
end