When(/^I enter the book details$/) do
  Pages::AddBooksPage.new.create_book
end

And(/^I navigate to add books page$/) do
  Pages::HomePage.new.goto_new_book_page
end