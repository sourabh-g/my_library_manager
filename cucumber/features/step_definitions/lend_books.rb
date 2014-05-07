And(/^I lend the book$/) do
  Pages::EditBookPage.new.update_lendee
end