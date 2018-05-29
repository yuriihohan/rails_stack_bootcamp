# Represents one potential word chain
class WordChain
  attr_reader :nodes

  VOCABULARY = %w[cat dog pop corn popcorn crop corp].freeze

  def initialize(nodes)
    @nodes = nodes
  end

  def to_s
    @nodes.map(&:name).join('')
  end

  def current_letter
    @nodes.last
  end

  def word?
    VOCABULARY.include?(to_s)
  end
end
