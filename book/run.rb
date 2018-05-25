require './fileParser'
require './library/book'
# puts "Please, introduce the book to read:"
# filename = gets.chomp
#
# puts "Please, introduce the name of the book:"
# book_name = gets.chomp
#
# puts "Please, introduce the author:"
# book_author = gets.chomp

file_name = 'Jako_pomnishi_ego.txt'
book_name = '…Яко помниши его'
book_author = 'Айзек Азимов'

file_parser = FileParser.new('book-library/' << file_name)
book = Library::Book.new(file_parser.lines, book_name, book_author)

puts book.page(33)
