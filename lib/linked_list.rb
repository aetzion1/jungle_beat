require './lib/node'

class LinkedList

    attr_reader :head

    def initialize
        @head = nil
    end

    def append(data)
        if @head == nil
        # if @head.nil?
            @head = Node.new(data)
            @head.data
        else
            element = @head
            element.next_node  = Node.new(data)
            @head.next_node.data
        end
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