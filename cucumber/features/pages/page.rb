module Pages
  class Page
    include Capybara::DSL

    def self.current_page?
      is_current_page = Capybara.current_url =~ self.url_pattern
      puts "[WARN] #{Capybara.current_url} does not match pattern #{self.url_pattern.inspect}" unless is_current_page
      is_current_page
    end
  end
end
