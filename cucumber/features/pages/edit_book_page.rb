require_relative 'page'

module Pages
  class Pages::EditBookPage < Pages::Page

    def self.url_pattern
      %r{books/\d+/edit}
    end

    def update_lendee
      within '#field' do
        screenshot_and_save_page
        fill_in 'book[lendee_name]', with: 'dummy_lendee_name'
      end
      click_on 'Update Book'
    end
  end
end
