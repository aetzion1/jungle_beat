require './lib/node'

class LinkedList

    attr_reader :head

    def initialize
        @head = nil
    end

    def append(data)
        if @head
            find_tail.next_node = Node.new(data)
        else
            @head = Node.new(data)
        end
        data
    end

    def prepend(data)
        if @head
            old_head = @head
            @head = Node.new(data)
            @head.next_node = old_head
        else 
            @head = Node.new(data)
        end
        data
    end

    def insert(position, data)
        # insert 1+ into given position
        node = @head
        if position > 0
            position = position - 1
        else
            position = 0
        end
        position.times do 
            node = node.next_node
        end
        old_next = node.next_node
        node.next_node = Node.new(data)
        node.next_node.next_node = old_next
        data
    end

    def find_tail
        element = @head
        until element.next_node == nil
            element = element.next_node
        end
        element
        # return element if !element.next_node
        # return element if !element.next_node while (element = element.next_node)
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
        string = ""
        unless @head == nil
            node = @head
            string += node.data
            until node.next_node == nil
                string += " "
                node = node.next_node
                string += node.data
            end
        end
        string
    end

end