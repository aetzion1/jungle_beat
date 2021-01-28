require './lib/node'

class LinkedList

    attr_reader :head

    def initialize
        @head = nil
    end

    def append(data)
        @head = Node.new(data)
        @head.data
    end

    def count
        count = 0
        element = @head
        until element == nil
            count += 1
            element = element.next_node
        end
        count
    end

    def to_string
        @head.map do |node|
            node.data
        end.flatten
    end

end