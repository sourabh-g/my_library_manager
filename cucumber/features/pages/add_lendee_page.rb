require_relative 'page'
module Pages
  class AddLendeePage < Pages::Page
    def add_lendee(lendee)
      within '.field' do
        fill_in 'lendee[name]', with: lendee.name
      end
      click_on 'Create Lendee'
    end
  end
end