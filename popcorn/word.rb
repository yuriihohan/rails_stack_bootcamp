# Represents one potential word
class Word
  attr_reader :nodes

  def initialize(nodes)
    @nodes = nodes
  end

  def to_s
    @nodes.find_all { |node| node.name != '' }
          .map(&:name).join('')
  end

  def current_letter
    @nodes.last
  end
end
