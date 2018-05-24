require_relative 'page'

module Library
  # Represent one book in our library
  class Book
    attr_reader :name, :author, :pages, :at_page
    PAGE_LENGTH = 800
    NEW_LINE = "\n".freeze

    def initialize(lines, name, author)
      raise ArgumentError, 'Book contains at least one line' if check_non_empty(lines)
      raise ArgumentError, 'Book should have non-empty name' if check_non_empty(name)
      raise ArgumentError, 'Book should have an author' if check_non_empty(author)

      distribute_to_pages(lines)
      @name = name
      @author = author
      @at_page = 1
    end

    def page(page_number)
      navigate_page(page_number)
    end

    def total_pages
      @pages.size
    end

    def current_page
      navigate_page(@at_page)
    end

    def bookmark(page_number)
      @pages[page_number].is_bookmarked = true
    end

    def bookmarked_pages
      @pages.find.find_all(&:is_bookmarked)
    end

    def next_page
      @at_page += 1
      navigate_page(@at_page)
    end

    def prev_page
      @at_page -= 1
      navigate_page(@at_page)
    end

    def first_page
      @at_page = 1
      navigate_page(@at_page)
    end

    def last_page
      @at_page = total_pages - 1
      navigate_page(@at_page)
    end

    def skip_pages(page_number)
      @at_page += page_number
      navigate_page(@at_page)
    end

    private def distribute_to_pages(lines)
      @pages = {}
      page_count = 1
      page_text = ''

      lines.each do |line|
        line.split.each do |word|
          if page_text.size + word.size > PAGE_LENGTH
            @pages[page_count] = Page.new(page_text)
            page_count += 1
            page_text = word << ''
          else
            page_text << "#{word} "
          end
        end
        page_text << NEW_LINE
      end

      @pages[page_count] = Page.new(page_text) unless page_text.empty?
    end

    private def navigate_page(page_number)
      raise ArgumentError, 'Cannot navigate to negative page' if page_number <= 0 || page_number > total_pages

      page_preview = @pages[page_number].text
      page_preview << NEW_LINE
      page_preview << page_number.to_s.rjust(winsize[1])
    end

    private def winsize
      # Ruby 1.9.3 added 'io/console' to the standard library.
      require 'io/console'
      IO.console.winsize
    end

    private def check_non_empty(arg)
      arg.nil? || arg.empty?
    end
  end
end
