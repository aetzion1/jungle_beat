require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/node'
require './lib/linked_list'

class NodeTest < Minitest::Test

    def setup
        @list = LinkedList.new
    end

    def test_it_exists_and_has_attributes
        assert_instance_of LinkedList, @list
        assert_nil @list.head
    end

    def test_it_can_append_data_to_list
        @list.append("doop")

        assert_equal "doop", @list.head.data
        assert_nil @list.head.next_node

        @list.append("deep")

        assert_equal "doop", @list.head.data
        assert_equal "deep", @list.head.next_node.data

        @list.append("deep")

        assert_equal "doop", @list.head.data
        assert_equal "deep", @list.head.next_node.data
        assert_equal "deep", @list.head.next_node.next_node.data
    end

    def test_it_can_prepend_data
        @list.append("doop")
        @list.append("da")
        @list.append("deep")
        @list.append("daa")

        assert_equal "doop", @list.head.data

        @list.prepend("da")

        assert_equal "da", @list.head.data
        assert_equal "doop", @list.head.next_node.data
    end

    def test_it_can_insert_data
        @list.append("doop")
        @list.append("deep")
        @list.append("daa")

        assert_equal "deep", @list.head.next_node.data

        @list.insert(1, "da")

        assert_equal "da", @list.head.next_node.data
    end

    def test_it_can_count_things_in_list
        assert_equal 0, @list.count

        @list.append("doop")
        
        assert_equal 1, @list.count

        @list.append("deep")
        
        assert_equal 2, @list.count
    end

    def assert_it_can_generate_string_of_list_elements_separated_by_spaces
        assert_nil list.to_string
        
        @list.append("doop")

        assert_equal "doop", @list.to_string
        
        @list.append("deep")

        assert_equal "doop deep", @list.to_string
    end

end
