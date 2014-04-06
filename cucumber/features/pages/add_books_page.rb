class AddBooksPage
  include Capybara::DSL
  def goto
    visit '/books/new'
    self
  end

  def create_book
    #within('#field') do
      fill_in 'book[title]', with: 'Dummy Title'
      fill_in 'book[author]', with: 'Dummy Author'
      click_on 'Create Book'
    #end
  end
end