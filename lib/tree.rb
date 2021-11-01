class Tree
  def initialize(root = nil)
    @root = root
  end

  def get_element_by_id(id)
    nodes_to_visit = [@root]

    until nodes_to_visit.empty?
      current = nodes_to_visit.pop
      return current if current[:id] == id

      nodes_to_visit = nodes_to_visit + current[:children]
    end
    nil
  end
end