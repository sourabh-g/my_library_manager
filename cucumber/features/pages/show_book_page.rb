module Pages
  class ShowBookPage < Pages::Page
    def self.url_pattern
      %r{books/\d+}
    end
  end
end