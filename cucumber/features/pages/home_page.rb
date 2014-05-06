require_relative 'page'
module Pages
  class HomePage < Pages::Page
    def goto
      visit '/'
    end

    def goto_manage_lendees
      click_on 'Manage Lendees'
    end

    def goto_manage_books
      click_on 'Manage Books'
    end
  end
end