require_relative 'page'

module Pages
  class Pages::EditBookPage < Pages::Page

    def self.url_pattern
      %r{books/\d+/edit}
    end

    def update_lendee
      within '#field' do
        lendee = FactoryGirl.build(:lendee)
        puts find(:select, 'book[lendee_id]').first(:option, lendee.name).text
        puts find(:select, 'book[lendee_id]').text
        find(:select, 'book[lendee_id]').first(:option, lendee.name)
          .select_option
        # select('1',from: 'book[lendee_id]')
        # screenshot_and_save_page
        # find('#book_lendee_id').select_option
        # find('#book_lendee_id').find(:xpath,'option').select_option
        # fill_in 'book[lendee_name]', with: 'dummy_lendee_name'
      end
      click_on 'Update Book'
    end
  end
end
