When(/^I enter the book details$/) do
  Pages::AddBooksPage.new.create_book
end