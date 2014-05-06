require_relative 'page'
module Pages
  class ManageLendeesPage < Pages::Page
    def goto_add_lendee_page
      click_on 'New Lendee'
    end
  end
end