Given(/^I am on the add books page$/) do
  add_books_page = AddBooksPage.new
  add_books_page.goto
end