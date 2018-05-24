# Represents a node inside a graph
class Node
  attr_reader :name, :adjacent

  def initialize(name)
    @name = name
  end

  def assign_adjacency(nodes)
    @adjacent = nodes
  end
end
