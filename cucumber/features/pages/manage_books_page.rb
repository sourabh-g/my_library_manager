require_relative 'page'

module Pages
  class Pages::ManageBooksPage < Pages::Page

    def goto
      visit '/books'
    end

    def goto_edit_book_page
      click_on 'Edit'
    end

    def goto_new_book_page
      click_on 'New Book'
    end
  end
end