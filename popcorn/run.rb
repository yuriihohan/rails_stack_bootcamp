require './node'
require './graph'
require './word_chain'

words = []
chains = []
graph = Graph.build

graph.nodes.each do |node|
  chains << WordChain.new([node])
end

chains.each do |chain|
  current_letter = chain.current_letter

  current_letter.adjacent.each do |adjacent|
    next if chain.nodes.include?(adjacent)

    new_chain = WordChain.new(chain.nodes + [adjacent])
    chains << new_chain

    words << new_chain.to_s if new_chain.word? && !words.include?(new_chain.to_s)
  end
end

puts words
