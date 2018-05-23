require './library/book'
require './spec/utils/randomizer'

RSpec.describe Library::Book do
  describe '#read_book' do
    subject { book }

    BOOK_TITLE = 'Book Title'.freeze
    BOOK_AUTHOR = 'Book Author'.freeze
    LINES = [Randomizer.random_string(300),
             Randomizer.random_string(300),
             Randomizer.random_string(300)].freeze

    describe 'when book cannot be created' do
      it 'should throw on attempt to create empty book' do
        expect { Library::Book.new(nil, BOOK_TITLE, BOOK_AUTHOR) }.to raise_error(ArgumentError)
        expect { Library::Book.new([], BOOK_TITLE, BOOK_AUTHOR) }.to raise_error(ArgumentError)
      end

      it 'should throw on attempt to create book without title' do
        expect { Library::Book.new(LINES, nil, BOOK_AUTHOR) }.to raise_error(ArgumentError)
        expect { Library::Book.new(LINES, '', BOOK_AUTHOR) }.to raise_error(ArgumentError)
      end

      it 'should throw on attempt to create book without book author' do
        expect { Library::Book.new(LINES, BOOK_TITLE, nil) }.to raise_error(ArgumentError)
        expect { Library::Book.new(LINES, BOOK_TITLE, '') }.to raise_error(ArgumentError)
      end
    end

    describe 'when book can be created' do
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

      it 'should contain two new lines and a line for page number on first page' do
        expect(book.page(1).count("\n")).to eq 2 + 1
      end

      it 'should contain one line and a line for page number on first page' do
        expect(book.page(2).count("\n")).to eq 1 + 1
      end

      it 'should throw on leaving the bounds of the book downwards' do
        expect { book.prev_page }.to raise_error(ArgumentError)
      end

      it 'should throw on leaving the bounds of the book upwards' do
        expect { book.page(3) }.to raise_error(ArgumentError)
      end
    end
  end
end
