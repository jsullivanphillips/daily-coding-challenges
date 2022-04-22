# Jamie Sullivan-Phillips
# Daily coding challenge April 2st 2022

class Node
    attr_accessor :val, :left, :right
    def initialize(val, left=nil, right=nil)
        @val = val
        @left = left
        @right = right
    end

    def leaf
        @left == nil and @right == nil
    end
    
    def insert(val)
        if val > @val
            if @right == nil
                @right = Node.new(val)
            else
                @right.insert(val)
            end
        elsif val < @val
            if @left == nil
                @left = Node.new(val)
            else
                @left.insert(val)
            end
        end
    end

    def depth(depth)
        if leaf
            return depth
        elsif @left.nil?
            return @right.depth(depth += 1)
        else
            return @left.depth(depth += 1)
        end
    end

    
    def serialize(node)

    end

    def deserialize(node)

    end
end

tree= Node.new(3)
tree.insert(10)
tree.insert(11)
