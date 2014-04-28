Given(/^I am on the add books page$/) do
  add_books_page = Pages::AddBooksPage.new
  add_books_page.goto
end

Then(/^I should see details of new book$/) do
  expect(Pages::ShowBookPage).to be_current_page
end


Then(/^I should see the lendee details for the book$/) do
  expect(Pages::ShowBookPage).to be_current_page
  all(:css, '.active').any?
end