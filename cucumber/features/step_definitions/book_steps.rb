When(/^I goto edit book page/) do
  Pages::ShowBookPage.new.goto_edit_page
end

And(/^I fill in the lendee details$/) do
  Pages::EditBookPage.new.update_lendee
end

When(/^I enter the book details$/) do
  Pages::AddBooksPage.new.create_book
end

And(/^I navigate to add books page$/) do
  Pages::ManageBooksPage.new.goto_new_book_page
end