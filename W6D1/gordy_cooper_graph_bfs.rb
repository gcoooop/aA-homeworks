require "set"

class GraphNode
    
    attr_accessor :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end

end

def bfs(starting_node, target_value)
    visited = Set.new
    queue = [starting_node]
    until queue.empty?
        node = queue.shift
        visited.add(node.value)
        queue += node.neighbors.reject { |neighbor| visited.include?(neighbor.value)}
        return node if node.value == target_value
    end
    nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p bfs(a, "f")