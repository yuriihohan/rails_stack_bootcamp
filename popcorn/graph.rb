#
#   O-P
#  /|\|\
# P-R-O-C
#  \|/|/
#   N-C
#
class Graph
  attr_reader :nodes, :start_node
  def initialize(nodes)
    @start_node = Node.new('')
    @start_node.assign_adjacency(nodes)
    @nodes = []
    @nodes << nodes
  end

  def self.build
    p1 = Node.new('p')
    o1 = Node.new('o')
    p2 = Node.new('p')
    r = Node.new('r')
    o2 = Node.new('o')
    n = Node.new('n')
    c1 = Node.new('c')
    c2 = Node.new('c')

    p1.assign_adjacency([o1, r, n])
    o1.assign_adjacency([p1, r, o2, p2])
    p2.assign_adjacency([o1, c2, o2])
    c2.assign_adjacency([p2, o2, c1])
    r.assign_adjacency([p1, o1, o2, n])
    o2.assign_adjacency([p2, o1, r, c2, c1, n])
    n.assign_adjacency([p1, r, o2, c1])
    c1.assign_adjacency([n, o2, c2])
    Graph.new([p1, o1, p2, r, o2, n, c1, c2])
  end
end
