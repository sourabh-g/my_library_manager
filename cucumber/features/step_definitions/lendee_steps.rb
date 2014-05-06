When(/^I navigate to add lendees page$/) do
  Pages::ManageLendeesPage.new.goto_add_lendee_page
end

And(/^I create a lendee$/) do
  Pages::AddLendeePage.new.add_lendee
end

Then(/^I should see details of new lendee$/) do
  lendee = FactoryGirl.build(:lendee)
  matches = page.all('p', text: lendee.name)
  expect(matches.count).to eql 1
end