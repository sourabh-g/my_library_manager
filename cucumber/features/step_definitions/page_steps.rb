Given(/^I am on the add books page$/) do
  add_books_page = AddBooksPage.new
  add_books_page.goto
end

Then(/^I should see a confirmation page$/) do
  expect(ShowBookPage).to be_current_page
end
