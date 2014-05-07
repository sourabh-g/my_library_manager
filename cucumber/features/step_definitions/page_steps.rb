Then(/^I should see details of new book$/) do
  expect(Pages::ShowBookPage).to be_current_page
end


Then(/^I should see the lendee details for the book$/) do
  expect(Pages::ShowBookPage).to be_current_page
  lendee = FactoryGirl.build(:lendee)
  matches = all('p', text: lendee.name)
  expect(matches.count).to eql 1
end

Given(/^I am on the home page$/) do
  Pages::HomePage.new.goto
end

And(/^I navigate to manage lendees page$/) do
  Pages::HomePage.new.goto_manage_lendees
end

And(/^I navigate to manage books page$/) do
  Pages::HomePage.new.goto_manage_books
end

Given(/^I am on manage books page$/) do
  Pages::ManageBooksPage.new.goto
end

And(/^I navigate to edit book$/) do
  Pages::ManageBooksPage.new.goto_edit_book_page
end