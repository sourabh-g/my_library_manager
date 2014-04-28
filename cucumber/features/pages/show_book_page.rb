module Pages
  class ShowBookPage < Pages::Page
    def self.url_pattern
      %r{books/\d+}
    end

    def goto_edit_page
      click_on 'Edit'
    end
  end
end