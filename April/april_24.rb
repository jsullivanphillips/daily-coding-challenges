# Jamie Sullivan-Phillips
# Daily coding challenge April 24th 2022
# --- Problem --- #
# An XOR linked list is a more memory efficient doubly linked list. 
# Instead of each node holding next and prev fields, it holds a field named both, 
# which is an XOR of the next node addr and the previous node addr. Implement an XOR linked list; 
# it has an add(element) which adds the element to the end, and a get(index) which returns the node at index.
# --------------- #

class Node 
    attr_accessor :data, :both
    def initialize(data, npx = 0)
        @data = data
        @both = npx
    end

    def add(element)

    end
end

k = Node.new(1, 0)
k.add(Node.new(2,0))