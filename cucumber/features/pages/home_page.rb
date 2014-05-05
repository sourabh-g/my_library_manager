require_relative 'page'
module Pages
  class HomePage < Pages::Page
    def goto
      visit '/'
    end

    def goto_edit_page
      click_on 'Edit'
    end

    def goto_new_book_page
      click_on 'New Book'
    end
  end
end