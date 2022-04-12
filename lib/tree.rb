class Tree
  def initialize(root = nil)
    @root = root
  end

  def get_element_by_id(str)
    if @root[:id] == str
      return @root
    else
      @root[:children].each do |child|
        return Tree.new(child).get_element_by_id(str)
      end
    end
    return nil
  end

end