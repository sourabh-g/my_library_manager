When(/^I goto edit book page/) do
  Pages::ShowBookPage.new.goto_edit_page
end

And(/^I fill in the lendee details$/) do
  Pages::EditBookPage.new.update_lendee
end