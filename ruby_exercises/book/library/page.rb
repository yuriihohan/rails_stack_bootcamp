module Library
  # Represent one page in a book
  class Page
    attr_accessor :text, :is_bookmarked

    def initialize(page)
      @text = page
      @is_bookmarked = false
    end
  end
end
