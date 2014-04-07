require_relative 'page'
module Pages
  class AddBooksPage < Pages::Page

    def goto
      visit '/books/new'
    end

    def create_book
      within('#field') do
        fill_in 'book[title]', with: 'Dummy Title'
        fill_in 'book[author]', with: 'Dummy Author'
      end
      click_on 'Create Book'
    end
  end
end
