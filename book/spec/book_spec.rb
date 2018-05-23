require './library/book'
require './spec/utils/randomizer'

RSpec.describe Library::Book do
  describe '#read_book' do
    subject { book }

    BOOK_TITLE = 'Book Title'.freeze
    BOOK_AUTHOR = 'Book Author'.freeze
    LINES = [Randomizer.random_string(300), Randomizer.random_string(300), 
            Randomizer.random_string(300)]
    let!(:book) do
      Library::Book.new(LINES, BOOK_TITLE, BOOK_AUTHOR)
    end

    it 'should have two pages' do
      expect(book.total_pages).to eq 2
    end

    it 'should set book title' do
      expect(book.name).to eq BOOK_TITLE
    end

    it 'should set book author' do
      expect(book.author).to eq BOOK_AUTHOR
    end
    
    it 'should set at page to 1' do
      expect(book.at_page).to eq 1
    end
  end
end