require './node'
require './graph'
require './word'

words = []
graph = Graph.build

start_node = graph.start_node
start_node.adjacent.each do |node|
  arr = [start_node, node]
  word = Word.new(arr)
  words << word
end

words.each do |word|
  current_letter = word.current_letter
  current_letter.adjacent.each do |adjacent|
    unless word.nodes.include?(adjacent)
      new_word = Word.new(word.nodes + [adjacent])
      words << new_word
    end
  end
end

puts 'true' if words.map(&:to_s).include?('popcorn')
